
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int fz_solid_color_painter_t ;
typedef int fz_pixmap ;
typedef int fz_overprint ;
struct TYPE_13__ {int y0; int y1; } ;
typedef TYPE_2__ fz_irect ;
struct TYPE_14__ {scalar_t__ alen; int len; TYPE_1__* edges; } ;
typedef TYPE_3__ fz_gel ;
typedef int fz_context ;
struct TYPE_12__ {int y; } ;


 int advance_active (int *,TYPE_3__*,int) ;
 int even_odd_sharp (int *,TYPE_3__*,int,TYPE_2__ const*,int *,unsigned char*,int *,int *) ;
 int insert_active (int *,TYPE_3__*,int,int*) ;
 int non_zero_winding_sharp (int *,TYPE_3__*,int,TYPE_2__ const*,int *,unsigned char*,int *,int *) ;

__attribute__((used)) static void
fz_scan_convert_sharp(fz_context *ctx,
 fz_gel *gel, int eofill, const fz_irect *clip,
 fz_pixmap *dst, unsigned char *color, fz_solid_color_painter_t *fn, fz_overprint *eop)
{
 int e = 0;
 int y = gel->edges[0].y;
 int height;

 gel->alen = 0;


 if (y < clip->y0)
 {
  while (gel->alen > 0 || e < gel->len)
  {
   height = insert_active(ctx, gel, y, &e);
   y += height;
   if (y >= clip->y0)
   {
    y = clip->y0;
    break;
   }
  }
 }


 while (gel->alen > 0 || e < gel->len)
 {
  height = insert_active(ctx, gel, y, &e);

  if (gel->alen == 0)
   y += height;
  else
  {
   int h;
   if (height >= clip->y1 - y)
    height = clip->y1 - y;

   h = height;
   while (h--)
   {
    if (eofill)
     even_odd_sharp(ctx, gel, y, clip, dst, color, fn, eop);
    else
     non_zero_winding_sharp(ctx, gel, y, clip, dst, color, fn, eop);
    y++;
   }
  }
  if (y >= clip->y1)
   break;

  advance_active(ctx, gel, height);
 }
}
