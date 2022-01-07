
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int char_u ;
struct TYPE_5__ {int text_context; int in_use; } ;
struct TYPE_4__ {scalar_t__ vc_type; } ;
typedef int PangoFontDescription ;
typedef int PangoFont ;
typedef int * GuiFont ;


 scalar_t__ CONV_NONE ;
 int EMSG2 (int ,int *) ;
 int PANGO_SCALE ;
 int _ (char*) ;
 scalar_t__ e_font ;
 int g_object_unref (int *) ;
 TYPE_3__ gui ;
 TYPE_1__ output_conv ;
 int * pango_context_load_font (int ,int *) ;
 int pango_font_description_free (int *) ;
 int * pango_font_description_from_string (char const*) ;
 scalar_t__ pango_font_description_get_size (int *) ;
 int pango_font_description_set_size (int *,int) ;
 int * string_convert (TYPE_1__*,int *,int *) ;
 int vim_free (int *) ;

GuiFont
gui_mch_get_font(char_u *name, int report_error)
{
    PangoFontDescription *font;


    if (!gui.in_use || name == ((void*)0))
 return ((void*)0);

    if (output_conv.vc_type != CONV_NONE)
    {
 char_u *buf;

 buf = string_convert(&output_conv, name, ((void*)0));
 if (buf != ((void*)0))
 {
     font = pango_font_description_from_string((const char *)buf);
     vim_free(buf);
 }
 else
     font = ((void*)0);
    }
    else
 font = pango_font_description_from_string((const char *)name);

    if (font != ((void*)0))
    {
 PangoFont *real_font;


 if (pango_font_description_get_size(font) <= 0)
     pango_font_description_set_size(font, 10 * PANGO_SCALE);

 real_font = pango_context_load_font(gui.text_context, font);

 if (real_font == ((void*)0))
 {
     pango_font_description_free(font);
     font = ((void*)0);
 }
 else
     g_object_unref(real_font);
    }

    if (font == ((void*)0))
    {
 if (report_error)
     EMSG2(_((char *)e_font), name);
 return ((void*)0);
    }

    return font;
}
