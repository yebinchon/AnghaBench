
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int (* fz_span_painter_t ) (unsigned char*,int ,unsigned char*,int,int ,int,int,int *) ;
typedef int (* fz_span_color_painter_t ) (unsigned char*,unsigned char*,int,int,unsigned char*,int ,int *) ;
struct TYPE_3__ {unsigned char* samples; int y; int stride; int x; int n; int alpha; } ;
typedef TYPE_1__ fz_pixmap ;
typedef int fz_overprint ;


 int stub1 (unsigned char*,unsigned char*,int,int,unsigned char*,int ,int *) ;
 int stub2 (unsigned char*,int ,unsigned char*,int,int ,int,int,int *) ;

__attribute__((used)) static inline void
blit_aa(fz_pixmap *dst, int x, int y, unsigned char *mp, int w, unsigned char *color, void *fn, fz_overprint *eop)
{
 unsigned char *dp;
 dp = dst->samples + (unsigned int)((y - dst->y) * dst->stride + (x - dst->x) * dst->n);
 if (color)
  (*(fz_span_color_painter_t *)fn)(dp, mp, dst->n, w, color, dst->alpha, eop);
 else
  (*(fz_span_painter_t *)fn)(dp, dst->alpha, mp, 1, 0, w, 255, eop);
}
