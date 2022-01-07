
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int write_data (int *,int,unsigned char*,int) ;

int write_partition_start_sector_number(FILE *fp, int iStartSector)
{
   unsigned char aucBuf[4];
   unsigned long l = (unsigned long)iStartSector;

   if(!l)
      return 0;



   aucBuf[0] = (unsigned char)(l & 0xff);
   aucBuf[1] = (unsigned char)((l & 0xff00) >> 8);
   aucBuf[2] = (unsigned char)((l & 0xff0000) >> 16);
   aucBuf[3] = (unsigned char)((l & 0xff000000) >> 24);
   return write_data(fp, 0x1c, aucBuf, 4);
}
