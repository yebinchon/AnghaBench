
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_font ;
typedef int fz_context ;
struct TYPE_4__ {int * charmaps; } ;
typedef TYPE_1__* FT_Face ;


 int FT_Set_Charmap (TYPE_1__*,int ) ;
 TYPE_1__* fz_font_ft_face (int *,int *) ;

void
xps_select_font_encoding(fz_context *ctx, fz_font *font, int idx)
{
 FT_Face face = fz_font_ft_face(ctx, font);
 FT_Set_Charmap(face, face->charmaps[idx]);
}
