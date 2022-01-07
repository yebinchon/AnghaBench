
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct msdos_boot_sector {int dummy; } ;
struct TYPE_3__ {int info_sector; int fat32_length; } ;
struct TYPE_4__ {TYPE_1__ fat32; int fat_length; } ;


 int CF_LE_L (int ) ;
 int CF_LE_W (int ) ;
 int backup_boot ;
 char* blank_sector ;
 TYPE_2__ bs ;
 char* fat ;
 int free (char*) ;
 char* info_sector ;
 int nr_fats ;
 int reserved_sectors ;
 char* root_dir ;
 int sector_size ;
 int seekto (int,char*) ;
 int size_fat ;
 int size_root_dir ;
 int writebuf (char*,int,char*) ;

__attribute__((used)) static void
write_tables (void)
{
  int x;
  int fat_length;




  fat_length = (size_fat == 32) ?
        CF_LE_L(bs.fat32.fat32_length) : CF_LE_W(bs.fat_length);

  seekto( 0, "start of device" );

  for( x = 0; x < reserved_sectors; ++x )
    writebuf( blank_sector, sector_size, "reserved sector" );

  seekto( 0, "boot sector" );
  writebuf( (char *) &bs, sizeof (struct msdos_boot_sector), "boot sector" );

  if (size_fat == 32)
    {
      seekto( CF_LE_W(bs.fat32.info_sector)*sector_size, "info sector" );
      writebuf( info_sector, 512, "info sector" );
      if (backup_boot != 0)
 {
   seekto( backup_boot*sector_size, "backup boot sector" );
   writebuf( (char *) &bs, sizeof (struct msdos_boot_sector),
      "backup boot sector" );
 }
    }

  seekto( reserved_sectors*sector_size, "first FAT" );
  for (x = 1; x <= nr_fats; x++)
    writebuf( fat, fat_length * sector_size, "FAT" );



  writebuf( (char *) root_dir, size_root_dir, "root directory" );

  if (info_sector) free( info_sector );
  free (root_dir);
  free (fat);
}
