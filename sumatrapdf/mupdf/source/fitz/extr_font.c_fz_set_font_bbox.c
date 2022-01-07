
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {float x0; float y0; float x1; float y1; } ;
struct TYPE_6__ {int invalid_bbox; } ;
struct TYPE_7__ {TYPE_3__ bbox; TYPE_1__ flags; scalar_t__ t3procs; } ;
typedef TYPE_2__ fz_font ;
typedef int fz_context ;


 TYPE_3__ fz_empty_rect ;
 TYPE_3__ fz_unit_rect ;

void
fz_set_font_bbox(fz_context *ctx, fz_font *font, float xmin, float ymin, float xmax, float ymax)
{
 if (xmin >= xmax || ymin >= ymax)
 {

  if (font->t3procs)
  {

   font->bbox = fz_empty_rect;
  }
  else
  {

   font->bbox = fz_unit_rect;
  }
  font->flags.invalid_bbox = 1;
 }
 else
 {
  font->bbox.x0 = xmin;
  font->bbox.y0 = ymin;
  font->bbox.x1 = xmax;
  font->bbox.y1 = ymax;
 }
}
