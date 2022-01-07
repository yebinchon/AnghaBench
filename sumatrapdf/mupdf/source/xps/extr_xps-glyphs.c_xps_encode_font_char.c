
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int fz_font ;
typedef int fz_context ;
struct TYPE_6__ {TYPE_1__* charmap; } ;
struct TYPE_5__ {int platform_id; scalar_t__ encoding_id; } ;
typedef TYPE_2__* FT_Face ;


 int FT_Get_Char_Index (TYPE_2__*,int) ;
 TYPE_2__* fz_font_ft_face (int *,int *) ;

int
xps_encode_font_char(fz_context *ctx, fz_font *font, int code)
{
 FT_Face face = fz_font_ft_face(ctx, font);
 int gid = FT_Get_Char_Index(face, code);
 if (gid == 0 && face->charmap && face->charmap->platform_id == 3 && face->charmap->encoding_id == 0)
  gid = FT_Get_Char_Index(face, 0xF000 | code);
 return gid;
}
