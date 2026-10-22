Monte Carlo: Estimasi Waktu Keberangkatan ke Kampus Pakai Ojol.Kasus ini ngambil elemen probabilitas yang gak pasti tiap paginya

Skenarionya gini:
Waktu dasar perjalanan dari kos ke kampus itu 20 menit. Tapi, tiap hari ada kemungkinan (probabilitas) kejadian yang bikin telat:Dapat driver ojol lama: Kemungkinan 30%, bikin nambah waktu 5 menit.Kena macet di lampu merah: Kemungkinan 40%, bikin nambah waktu 15 menit.Kehujanan di jalan (harus neduh/pakai jas hujan): Kemungkinan 20%, bikin nambah waktu 10 menit.

Kenapa ini disebut Monte Carlo?
Karena ini menggunakan pembangkitan bilangan acak (rbinom di R) secara berulang sebanyak 1000 kali untuk memodelkan probabilitas kejadian (hujan, macet, ojol lama) yang tidak pasti. Hasil dari ribuan percobaan acak ini dikumpulkan untuk menghasilkan estimasi waktu tempuh rata-rata yang paling realistis.
