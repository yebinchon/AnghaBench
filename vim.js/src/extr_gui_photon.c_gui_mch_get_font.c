
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int_u ;
typedef int char_u ;
typedef int GuiFont ;


 int EMSG2 (int ,int *) ;
 int FAIL ;
 scalar_t__ FALSE ;
 int e_font ;
 int * gui_ph_get_font (int *,int,int,int) ;
 scalar_t__ gui_ph_parse_font_name (int *,int **,int*,int*) ;
 int vim_free (int *) ;

GuiFont
gui_mch_get_font(char_u *vim_font_name, int report_error)
{
    char_u *font_name;
    char_u *font_tag;
    int_u font_size = 12;
    int_u font_flags = 0;

    if (gui_ph_parse_font_name(vim_font_name, &font_name, &font_flags,
  &font_size) != FALSE)
    {
 font_tag = gui_ph_get_font(font_name, font_flags, font_size, -1);
 vim_free(font_name);

 if (font_tag != ((void*)0))
     return (GuiFont)font_tag;
    }

    if (report_error)
 EMSG2(e_font, vim_font_name);

    return FAIL;
}
