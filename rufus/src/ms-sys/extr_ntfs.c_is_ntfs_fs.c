
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aucMagic ;
typedef int FILE ;


 int contains_data (int *,int,unsigned char*,int) ;

int is_ntfs_fs(FILE *fp)
{
   unsigned char aucMagic[] = {'N','T','F','S',' ',' ',' ',' '};

   return contains_data(fp, 0x03, aucMagic, sizeof(aucMagic));
}
