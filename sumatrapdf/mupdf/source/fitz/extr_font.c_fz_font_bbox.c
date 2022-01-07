
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_rect ;
struct TYPE_3__ {int bbox; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;



fz_rect fz_font_bbox(fz_context *ctx, fz_font *font)
{
 return font->bbox;
}
