
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {float y1; } ;
struct TYPE_6__ {TYPE_3__* ft_face; TYPE_1__ bbox; scalar_t__ t3procs; } ;
typedef TYPE_2__ fz_font ;
typedef int fz_context ;
struct TYPE_7__ {scalar_t__ ascender; float units_per_EM; } ;
typedef TYPE_3__* FT_Face ;



float fz_font_ascender(fz_context *ctx, fz_font *font)
{
 if (font->t3procs)
  return font->bbox.y1;
 else
 {
  FT_Face face = font->ft_face;
  if (face->ascender == 0)
   return 0.8f;
  return (float)face->ascender / face->units_per_EM;
 }
}
