
#SIMULASI MONTE CARLO: WAKTU KE KAMPUS

# 1. Variabel dan Probabilitas
n_simulasi <- 1000  #  simulasi untuk 1000 hari perjalanan
waktu_dasar <- 20   # Waktu normal tanpa kendala (menit)

# Probabilitas dan tambahan waktu (delay)
p_ojol_lama <- 0.3    # Peluang 30% dapet driver lama
delay_ojol <- 5       # Tambahan waktu 5 menit

p_macet <- 0.4        # Peluang 40% kena macet
delay_macet <- 15     # Tambahan waktu 15 menit

p_hujan <- 0.2        # Peluang 20% hujan
delay_hujan <- 10     # Tambahan waktu 10 menit

# 2. Bangkitkan Bilangan Acak (Simulasi)
# Menggunakan distribusi binomial untuk mensimulasikan kejadian (1 = terjadi, 0 = tidak)
simulasi_ojol <- rbinom(n_simulasi, 1, p_ojol_lama) * delay_ojol
simulasi_macet <- rbinom(n_simulasi, 1, p_macet) * delay_macet
simulasi_hujan <- rbinom(n_simulasi, 1, p_hujan) * delay_hujan

# 3. Hitung Total Waktu Perjalanan untuk Setiap Simulasi
total_waktu <- waktu_dasar + simulasi_ojol + simulasi_macet + simulasi_hujan

# 4. Analisis Hasil Simulasi
rata_rata_waktu <- mean(total_waktu)
print(paste("Rata-rata waktu ke kampus:", rata_rata_waktu, "menit"))

standar_deviasi <- sd(total_waktu)
print(paste("Standar deviasi waktu:", standar_deviasi, "menit"))

# Menghitung kuantil (Persentil 25 dan 75)
kuantil_waktu <- quantile(total_waktu, c(0.25, 0.75))
print(paste("25% hari perjalanan bisa ditempuh dalam:", kuantil_waktu[1], "menit atau kurang"))
print(paste("75% hari perjalanan bisa ditempuh dalam:", kuantil_waktu[2], "menit atau kurang"))

# 5. Visualisasi Hasil
# Bikin histogram untuk lihat persebaran datanya
hist(total_waktu, 
     main = "Distribusi Simulasi Waktu Perjalanan ke Kampus", 
     xlab = "Total Waktu (Menit)", 
     ylab = "Frekuensi (Hari)",
     col = "lightblue", 
     border = "black")

# Bikin boxplot untuk lihat rentang ekstremnya
boxplot(total_waktu, 
        main = "Boxplot Waktu Perjalanan", 
        ylab = "Total Waktu (Menit)", 
        col = "lightgreen")

