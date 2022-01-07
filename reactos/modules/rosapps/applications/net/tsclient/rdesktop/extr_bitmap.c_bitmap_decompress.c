
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int BOOL ;


 int False ;
 int bitmap_decompress1 (int *,int,int,int *,int) ;
 int bitmap_decompress2 (int *,int,int,int *,int) ;
 int bitmap_decompress3 (int *,int,int,int *,int) ;
 int bitmap_decompressx (int *,int,int,int *,int,int) ;

BOOL
bitmap_decompress(uint8 * output, int width, int height, uint8 * input, int size, int Bpp)
{
 BOOL rv;
  rv = bitmap_decompressx(output, width, height, input, size, Bpp);

 return rv;
}
