
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int fz_font ;
typedef int fz_context ;
struct TYPE_3__ {int num_charmaps; } ;
typedef TYPE_1__* FT_Face ;


 TYPE_1__* fz_font_ft_face (int *,int *) ;

int
xps_count_font_encodings(fz_context *ctx, fz_font *font)
{
 FT_Face face = fz_font_ft_face(ctx, font);
 return face->num_charmaps;
}
