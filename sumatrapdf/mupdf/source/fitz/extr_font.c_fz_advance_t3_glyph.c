
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float* t3widths; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;



__attribute__((used)) static float
fz_advance_t3_glyph(fz_context *ctx, fz_font *font, int gid)
{
 if (gid < 0 || gid > 255)
  return 0;
 return font->t3widths[gid];
}
