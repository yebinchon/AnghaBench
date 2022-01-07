
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct boot_sector_16 {int extended_sig; int label; int fs_type; scalar_t__ serial; } ;
struct boot_sector {int extended_sig; int label; int fs_type; scalar_t__ serial; } ;
typedef int b16 ;
typedef int b ;
struct TYPE_3__ {int fat_bits; scalar_t__ backupboot_start; } ;
typedef TYPE_1__ DOS_FS ;


 int fs_read (int ,int,struct boot_sector_16*) ;
 int fs_write (scalar_t__,int,struct boot_sector_16*) ;
 int memmove (int ,char*,int) ;

__attribute__((used)) static void write_boot_label(DOS_FS * fs, char *label)
{
    if (fs->fat_bits == 12 || fs->fat_bits == 16) {
 struct boot_sector_16 b16;

 fs_read(0, sizeof(b16), &b16);
 if (b16.extended_sig != 0x29) {
     b16.extended_sig = 0x29;
     b16.serial = 0;
     memmove(b16.fs_type, fs->fat_bits == 12 ? "FAT12   " : "FAT16   ",
      8);
 }
 memmove(b16.label, label, 11);
 fs_write(0, sizeof(b16), &b16);
    } else if (fs->fat_bits == 32) {
 struct boot_sector b;

 fs_read(0, sizeof(b), &b);
 if (b.extended_sig != 0x29) {
     b.extended_sig = 0x29;
     b.serial = 0;
     memmove(b.fs_type, "FAT32   ", 8);
 }
 memmove(b.label, label, 11);
 fs_write(0, sizeof(b), &b);
 if (fs->backupboot_start)
     fs_write(fs->backupboot_start, sizeof(b), &b);
    }
}
