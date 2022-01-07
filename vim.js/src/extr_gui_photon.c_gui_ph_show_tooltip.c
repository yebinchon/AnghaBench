
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char** strings; } ;
typedef TYPE_1__ vimmenu_T ;
typedef char char_u ;
typedef int PtWidget_t ;
typedef int PtArg_t ;
typedef int PgColor_t ;


 int MENU_INDEX_TIP ;
 int PtGetResources (int *,int,int *) ;
 int * PtInflateBalloon (int *,int *,int ,char*,char*,int ,int ) ;
 int PtSetArg (int *,int ,TYPE_1__**,int ) ;
 int Pt_ARG_POINTER ;
 int Pt_BALLOON_TOP ;

__attribute__((used)) static PtWidget_t * gui_ph_show_tooltip(PtWidget_t *window,
        PtWidget_t *widget,
        int position,
        char *text,
        char *font,
        PgColor_t fill_color,
        PgColor_t text_color)
{
    PtArg_t arg;
    vimmenu_T *menu;
    char_u *tooltip;

    PtSetArg(&arg, Pt_ARG_POINTER, &menu, 0);
    PtGetResources(widget, 1, &arg);



    tooltip = text;
    if (menu != ((void*)0))
    {
 int index = MENU_INDEX_TIP;
 if (menu->strings[ index ] != ((void*)0))
     tooltip = menu->strings[ index ];
    }

    return PtInflateBalloon(
     window,
     widget,


     Pt_BALLOON_TOP,
     tooltip,
     font,
     fill_color,
     text_color);
}
