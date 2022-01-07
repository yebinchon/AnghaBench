
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int contains_data (int *,int,char*,int ) ;
 int strlen (char*) ;

int is_fat_12_fs(FILE *fp)
{
   char *szMagic = "FAT12   ";

   return contains_data(fp, 0x36, szMagic, strlen(szMagic));
}
