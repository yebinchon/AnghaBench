
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_path ;
typedef int fz_matrix ;
struct TYPE_4__ {int ft_face; } ;
typedef TYPE_1__ fz_font ;
typedef int fz_context ;


 int * fz_outline_ft_glyph (int *,TYPE_1__*,int,int ) ;

fz_path *
fz_outline_glyph(fz_context *ctx, fz_font *font, int gid, fz_matrix ctm)
{
 if (!font->ft_face)
  return ((void*)0);
 return fz_outline_ft_glyph(ctx, font, gid, ctm);
}
