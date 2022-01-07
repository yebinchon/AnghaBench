
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int char_u ;
typedef scalar_t__ GuiFont ;


 scalar_t__ NOFONT ;
 int * vim_strsave (int *) ;

char_u *
gui_mch_get_fontname(GuiFont font, char_u *name)
{
    if (font != NOFONT)
    {
        return vim_strsave((char_u*)font);
    }
    return ((void*)0);
}
