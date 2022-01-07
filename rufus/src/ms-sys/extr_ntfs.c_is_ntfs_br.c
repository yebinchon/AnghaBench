
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aucRef ;
typedef int aucMagic ;
typedef int FILE ;


 int contains_data (int *,int,unsigned char*,int) ;

int is_ntfs_br(FILE *fp)
{


   unsigned char aucRef[] = {0x55, 0xAA};
   unsigned char aucMagic[] = {'N','T','F','S',' ',' ',' ',' '};

   if( ! contains_data(fp, 0x1FE, aucRef, sizeof(aucRef)))
      return 0;
   if( ! contains_data(fp, 0x03, aucMagic, sizeof(aucMagic)))
      return 0;
   return 1;
}
