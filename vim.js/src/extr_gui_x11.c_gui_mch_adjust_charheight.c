
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ascent; scalar_t__ descent; } ;
typedef TYPE_1__ XFontStruct ;
typedef int XFontSet ;
struct TYPE_4__ {scalar_t__ fontset; scalar_t__ char_ascent; scalar_t__ char_height; scalar_t__ norm_font; } ;


 scalar_t__ NOFONTSET ;
 int OK ;
 scalar_t__ fontset_ascent (int ) ;
 scalar_t__ fontset_height (int ) ;
 TYPE_2__ gui ;
 int p_linespace ;

int
gui_mch_adjust_charheight()
{
    {
 XFontStruct *font = (XFontStruct *)gui.norm_font;

 gui.char_height = font->ascent + font->descent + p_linespace;
 gui.char_ascent = font->ascent + p_linespace / 2;
    }
    return OK;
}
