
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int char_ascent; scalar_t__ char_height; int norm_font; } ;
struct TYPE_4__ {int ascender; scalar_t__ descender; } ;
typedef TYPE_1__ FontQueryInfo ;


 int OK ;
 int PfQueryFontInfo (int ,TYPE_1__*) ;
 TYPE_2__ gui ;
 int p_linespace ;

int
gui_mch_adjust_charheight(void)
{
    FontQueryInfo info;

    PfQueryFontInfo(gui.norm_font, &info);

    gui.char_height = - info.ascender + info.descender + p_linespace;
    gui.char_ascent = - info.ascender + p_linespace / 2;

    return OK;
}
