
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int write_data (int *,int,unsigned char*,int) ;

int write_partition_number_of_heads(FILE *fp, int iHeads)
{
   unsigned char aucBuf[2];
   unsigned short s = (unsigned short) iHeads;

   if(!s)
      return 0;



   aucBuf[0] = (unsigned char)(s & 0xff);
   aucBuf[1] = (unsigned char)((s & 0xff00) >> 8);
   return write_data(fp, 0x1a, aucBuf, 2);
}
