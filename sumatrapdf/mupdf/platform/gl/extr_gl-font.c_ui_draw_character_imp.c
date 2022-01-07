
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int fz_font ;
struct TYPE_2__ {int fontsize; } ;


 int ctx ;
 int fz_encode_character_with_fallback (int ,int ,int,int ,int ,int **) ;
 int g_font ;
 TYPE_1__ ui ;
 float ui_draw_glyph (int *,int ,int,float,float) ;

__attribute__((used)) static float ui_draw_character_imp(float x, float y, int c)
{
 fz_font *font;
 int gid = fz_encode_character_with_fallback(ctx, g_font, c, 0, 0, &font);
 return ui_draw_glyph(font, ui.fontsize, gid, x, y);
}
