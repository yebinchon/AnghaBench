
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int write_data (int *,int,unsigned char*,int) ;

int write_partition_physical_disk_drive_id_fat32(FILE *fp)
{
   unsigned char ucId = 0x80;

   return write_data(fp, 0x40, &ucId, 1);
}
