
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int FILE ;


 int read_data (int *,int,int*,int) ;

uint16_t read_mbr_copy_protect_bytes(FILE *fp)
{
   uint16_t tOut;
   if(!read_data(fp, 0x1bc, &tOut, 2))
      return 0xffff;
   return tOut;
}
