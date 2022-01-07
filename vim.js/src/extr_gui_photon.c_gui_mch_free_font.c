
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GuiFont ;


 int vim_free (int ) ;

void
gui_mch_free_font(GuiFont font)
{
    vim_free(font);
}
