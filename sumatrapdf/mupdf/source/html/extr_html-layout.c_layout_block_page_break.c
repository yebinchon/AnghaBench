
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;


 int PB_ALWAYS ;
 int PB_LEFT ;
 int PB_RIGHT ;
 float fmodf (float,float) ;

__attribute__((used)) static int layout_block_page_break(fz_context *ctx, float *yp, float page_h, float vertical, int page_break)
{
 if (page_h <= 0)
  return 0;
 if (page_break == PB_ALWAYS || page_break == PB_LEFT || page_break == PB_RIGHT)
 {
  float avail = page_h - fmodf(*yp - vertical, page_h);
  int number = (*yp + (page_h * 0.1f)) / page_h;
  if (avail > 0 && avail < page_h)
  {
   *yp += avail - vertical;
   if (page_break == PB_LEFT && (number & 1) == 0)
    *yp += page_h;
   if (page_break == PB_RIGHT && (number & 1) == 1)
    *yp += page_h;
   return 1;
  }
 }
 return 0;
}
