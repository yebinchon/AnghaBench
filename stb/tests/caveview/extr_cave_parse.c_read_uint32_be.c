
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint32 ;
typedef int FILE ;


 int fread (unsigned char*,int,int,int *) ;

uint32 read_uint32_be(FILE *f)
{
   unsigned char data[4];
   fread(data, 1, 4, f);
   return (data[0]<<24) + (data[1]<<16) + (data[2]<<8) + data[3];
}
