
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int_u ;
typedef char char_u ;
struct TYPE_12__ {char* norm_font; char* bold_font; char* ital_font; int char_ascent; scalar_t__ char_height; scalar_t__ char_width; int vimWindow; } ;
struct TYPE_11__ {int font; } ;
struct TYPE_9__ {int y; scalar_t__ x; } ;
struct TYPE_8__ {scalar_t__ y; scalar_t__ x; } ;
struct TYPE_10__ {TYPE_2__ ul; TYPE_1__ lr; } ;
typedef TYPE_3__ PhRect_t ;
typedef TYPE_4__ FontQueryInfo ;


 int FAIL ;
 scalar_t__ FALSE ;
 int OK ;
 int PF_STYLE_BOLD ;
 int PF_STYLE_ITALIC ;
 int PHFONT_FIXED ;
 int PfExtentText (TYPE_3__*,int *,char*,char*,int) ;
 int PfQueryFontInfo (char*,TYPE_4__*) ;
 char* PtFontSelection (int ,int *,int *,char*,int,int ,int *) ;
 scalar_t__ STRCMP (char*,char*) ;
 TYPE_5__ gui ;
 int gui_mch_free_font (char*) ;
 void* gui_ph_get_font (char*,int,int,int) ;
 scalar_t__ gui_ph_parse_font_name (char*,char**,int*,int*) ;
 int vim_free (char*) ;
 char* vim_strsave (int ) ;

int
gui_mch_init_font(char_u *vim_font_name, int fontset)
{
    char_u *font_tag;
    char_u *font_name = ((void*)0);
    int_u font_flags = 0;
    int_u font_size = 12;

    FontQueryInfo info;
    PhRect_t extent;

    if (vim_font_name == ((void*)0))
    {

 vim_font_name = "PC Terminal";
    }

    if (STRCMP(vim_font_name, "*") == 0)
    {
 font_tag = PtFontSelection(gui.vimWindow, ((void*)0), ((void*)0),
  "pcterm12", -1, PHFONT_FIXED, ((void*)0));

 if (font_tag == ((void*)0))
     return FAIL;

 gui_mch_free_font(gui.norm_font);
 gui.norm_font = font_tag;

 PfQueryFontInfo(font_tag, &info);
 font_name = vim_strsave(info.font);
    }
    else
    {
 if (gui_ph_parse_font_name(vim_font_name, &font_name, &font_flags,
      &font_size) == FALSE)
     return FAIL;

 font_tag = gui_ph_get_font(font_name, font_flags, font_size, 0);
 if (font_tag == ((void*)0))
 {
     vim_free(font_name);
     return FAIL;
 }

 gui_mch_free_font(gui.norm_font);
 gui.norm_font = font_tag;
    }

    gui_mch_free_font(gui.bold_font);
    gui.bold_font = gui_ph_get_font(font_name, font_flags | PF_STYLE_BOLD,
     font_size, PF_STYLE_BOLD);

    gui_mch_free_font(gui.ital_font);
    gui.ital_font = gui_ph_get_font(font_name, font_flags | PF_STYLE_ITALIC,
     font_size, PF_STYLE_ITALIC);


    PfExtentText(&extent, ((void*)0), font_tag, "g", 1);

    gui.char_width = extent.lr.x - extent.ul.x + 1;
    gui.char_height = (- extent.ul.y) + extent.lr.y + 1;
    gui.char_ascent = - extent.ul.y;

    vim_free(font_name);
    return OK;
}
