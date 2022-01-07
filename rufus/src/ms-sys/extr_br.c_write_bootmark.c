
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int aucRef ;
typedef int FILE ;


 unsigned long ulBytesPerSector ;
 int write_data (int *,unsigned long,unsigned char*,int) ;

__attribute__((used)) static int write_bootmark(FILE *fp)
{
   unsigned char aucRef[] = {0x55, 0xAA};
   unsigned long pos = 0x1FE;

   for (pos = 0x1FE; pos < ulBytesPerSector; pos += 0x200) {
      if (!write_data(fp, pos, aucRef, sizeof(aucRef)))
      return 0;
   }
   return 1;
}
