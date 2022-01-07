
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ncum; int ustart; } ;


 int UV_NDIVS ;
 int UV_NVS ;
 int UV_SQSIZ ;
 int UV_VSTART ;
 TYPE_1__* uv_row ;

__attribute__((used)) static int
uv_decode(float *up, float *vp, int c)
{
 int upper, lower;
 register int ui, vi;

 if (c < 0 || c >= UV_NDIVS)
  return (-1);
 lower = 0;
 upper = UV_NVS;
 while (upper - lower > 1) {
  vi = (lower + upper) >> 1;
  ui = c - uv_row[vi].ncum;
  if (ui > 0)
   lower = vi;
  else if (ui < 0)
   upper = vi;
  else {
   lower = vi;
   break;
  }
 }
 vi = lower;
 ui = c - uv_row[vi].ncum;
 *up = uv_row[vi].ustart + (ui+.5f)*UV_SQSIZ;
 *vp = UV_VSTART + (vi+.5f)*UV_SQSIZ;
 return (0);
}
