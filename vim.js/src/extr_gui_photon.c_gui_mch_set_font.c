
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GuiFont ;


 int PgSetFont (int ) ;

void
gui_mch_set_font(GuiFont font)
{
    PgSetFont(font);
}
