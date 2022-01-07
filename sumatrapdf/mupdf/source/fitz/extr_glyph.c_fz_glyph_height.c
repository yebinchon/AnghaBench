
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; } ;
typedef TYPE_1__ fz_glyph ;
typedef int fz_context ;



int
fz_glyph_height(fz_context *ctx, fz_glyph *glyph)
{
 return glyph->h;
}
