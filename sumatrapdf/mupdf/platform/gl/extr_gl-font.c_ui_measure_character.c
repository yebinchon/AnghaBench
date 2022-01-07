
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_font ;
struct TYPE_2__ {float fontsize; } ;


 int ctx ;
 float fz_advance_glyph (int ,int *,int,int ) ;
 int fz_encode_character_with_fallback (int ,int ,int,int ,int ,int **) ;
 int g_font ;
 TYPE_1__ ui ;

float ui_measure_character(int c)
{
 fz_font *font;
 int gid = fz_encode_character_with_fallback(ctx, g_font, c, 0, 0, &font);
 return fz_advance_glyph(ctx, font, gid, 0) * ui.fontsize;
}
