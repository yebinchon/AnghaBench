
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; } ;
typedef TYPE_1__ fz_glyph ;


 unsigned char FZ_BLEND (int,int,int) ;
 int FZ_EXPAND (int) ;

__attribute__((used)) static inline void
fz_paint_glyph_mask(int span, unsigned char *dp, int da, const fz_glyph *glyph, int w, int h, int skip_x, int skip_y)
{
 while (h--)
 {
  int skip_xx, ww, len, extend;
  const unsigned char *runp;
  unsigned char *ddp = dp;
  int offset = ((const int *)(glyph->data))[skip_y++];
  if (offset >= 0)
  {
   int eol = 0;
   runp = &glyph->data[offset];
   extend = 0;
   ww = w;
   skip_xx = skip_x;
   while (skip_xx)
   {
    int v = *runp++;
    switch (v & 3)
    {
    case 0:
     extend = v>>2;
     len = 0;
     break;
    case 1:
     len = (v>>2) + 1 + (extend<<6);
     extend = 0;
     if (len > skip_xx)
     {
      len -= skip_xx;
      goto transparent_run;
     }
     break;
    case 2:
     eol = v & 4;
     len = (v>>3) + 1 + (extend<<5);
     extend = 0;
     if (len > skip_xx)
     {
      len -= skip_xx;
      goto solid_run;
     }
     break;
    default:
     eol = v & 4;
     len = (v>>3) + 1 + (extend<<5);
     extend = 0;
     if (len > skip_xx)
     {
      runp += skip_xx;
      len -= skip_xx;
      goto intermediate_run;
     }
     runp += len;
     break;
    }
    if (eol)
    {
     ww = 0;
     break;
    }
    skip_xx -= len;
   }
   while (ww > 0)
   {
    int v = *runp++;
    switch(v & 3)
    {
    case 0:
     extend = v>>2;
     break;
    case 1:
     len = (v>>2) + 1 + (extend<<6);
     extend = 0;
transparent_run:
     if (len > ww)
      len = ww;
     ww -= len;
     ddp += len;
     break;
    case 2:
     eol = v & 4;
     len = (v>>3) + 1 + (extend<<5);
     extend = 0;
solid_run:
     if (len > ww)
      len = ww;
     ww -= len;
     do
     {
      *ddp++ = 0xFF;
     }
     while (--len);
     break;
    default:
     eol = v & 4;
     len = (v>>3) + 1 + (extend<<5);
     extend = 0;
intermediate_run:
     if (len > ww)
      len = ww;
     ww -= len;
     do
     {
      int v = *ddp;
      int a = *runp++;
      if (v == 0)
      {
       *ddp++ = a;
      }
      else
      {
       a = FZ_EXPAND(a);
       *ddp = FZ_BLEND(0xFF, v, a);
       ddp++;
      }
     }
     while (--len);
     break;
    }
    if (eol)
     break;
   }
  }
  dp += span;
 }
}
