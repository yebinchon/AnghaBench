
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_rasterizer ;


 int fz_rasterizer_aa_text_bits (int *) ;

int
fz_rasterizer_text_aa_level(fz_rasterizer *ras)
{
 return fz_rasterizer_aa_text_bits(ras);
}
