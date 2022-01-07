
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ y1; scalar_t__ x1; scalar_t__ y0; scalar_t__ x0; } ;
typedef TYPE_1__ fz_irect ;
struct TYPE_6__ {scalar_t__ h; scalar_t__ y; scalar_t__ w; scalar_t__ x; } ;
typedef TYPE_2__ fz_glyph ;



fz_irect
fz_glyph_bbox_no_ctx(fz_glyph *glyph)
{
 fz_irect bbox;
 bbox.x0 = glyph->x;
 bbox.y0 = glyph->y;
 bbox.x1 = glyph->x + glyph->w;
 bbox.y1 = glyph->y + glyph->h;
 return bbox;
}
