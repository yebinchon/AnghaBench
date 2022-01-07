
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aucRef ;
typedef int aucMagic ;
typedef int FILE ;


 int contains_data (int *,int,unsigned char*,int) ;

int is_fat_32_br(FILE *fp)
{


   unsigned char aucRef[] = {0x55, 0xAA};
   unsigned char aucMagic[] = {'M','S','W','I','N','4','.','1'};
   int i;

   for(i=0 ; i<3 ; i++)
      if( ! contains_data(fp, 0x1FE + i*0x200, aucRef, sizeof(aucRef)))
  return 0;
   if( ! contains_data(fp, 0x03, aucMagic, sizeof(aucMagic)))
      return 0;
   return 1;
}
