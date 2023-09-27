CREATE TABLE `FAKULTAS`  (
  `id` int(11) NOT NULL,
  `nama fakultas` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `KAMPUS`  (
  `id` int(11) NOT NULL,
  `nama kampus` varchar(255) NULL,
  `alamat kampus` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `LULUS`  (
  `id` int(11) NOT NULL,
  `nilai` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `MAHASISWA`  (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NULL,
  `nim` varchar(255) NULL,
  `fakultas` varchar(255) NULL,
  `kelas` varchar(255) NULL,
  `semester` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `MATA KULIAH`  (
  `id` int(11) NOT NULL,
  `id_matkul` varchar(255) NULL,
  `id_jurusan` varchar(255) NULL,
  `nama_matkul` varchar(255) NULL,
  `jenis_matkul` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `NILAI`  (
  `id` int(11) NOT NULL,
  `Nilai Kuis` varchar(255) NULL,
  `Nilai Tugas` varchar(255) NULL,
  `Nilai UTS` varchar(255) NULL,
  `Nilai UAS` varchar(255) NULL,
  PRIMARY KEY (`id`)
);

ALTER TABLE `FAKULTAS` ADD CONSTRAINT `fk_FAKULTAS_MATA KULIAH_1` FOREIGN KEY (`id`) REFERENCES `MATA KULIAH` (`id`);
ALTER TABLE `KAMPUS` ADD CONSTRAINT `fk_KAMPUS_MAHASISWA_1` FOREIGN KEY (`id`) REFERENCES `MAHASISWA` (`id`);
ALTER TABLE `KAMPUS` ADD CONSTRAINT `fk_KAMPUS_LULUS_1` FOREIGN KEY (`id`) REFERENCES `LULUS` (`id`);
ALTER TABLE `LULUS` ADD CONSTRAINT `fk_LULUS_NILAI_1` FOREIGN KEY (`id`) REFERENCES `NILAI` (`id`);
ALTER TABLE `MAHASISWA` ADD CONSTRAINT `fk_MAHASISWA_FAKULTAS_1` FOREIGN KEY (`id`) REFERENCES `FAKULTAS` (`id`);
ALTER TABLE `MATA KULIAH` ADD CONSTRAINT `fk_MATA KULIAH_NILAI_1` FOREIGN KEY (`id`) REFERENCES `NILAI` (`Nilai Kuis`);

