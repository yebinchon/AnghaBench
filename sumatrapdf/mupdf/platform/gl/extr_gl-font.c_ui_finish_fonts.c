
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int clear_font_cache () ;
 int ctx ;
 int fz_drop_font (int ,int ) ;
 int g_font ;

void ui_finish_fonts(void)
{
 clear_font_cache();
 fz_drop_font(ctx, g_font);
}
