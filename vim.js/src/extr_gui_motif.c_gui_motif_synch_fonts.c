
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int XmFontList ;
typedef int XFontStruct ;
struct TYPE_6__ {scalar_t__ norm_font; } ;
struct TYPE_5__ {int with; int what; scalar_t__ dialog; } ;
typedef TYPE_1__ SharedFindReplace ;


 int XmFontListFree (int ) ;
 int XmNfontList ;
 int XtVaSetValues (int ,int ,int ,int *) ;
 TYPE_1__ find_widgets ;
 TYPE_3__ gui ;
 int gui_motif_create_fontlist (int *) ;
 TYPE_1__ repl_widgets ;

void
gui_motif_synch_fonts(void)
{
    SharedFindReplace *frdp;
    int do_replace;
    XFontStruct *font;
    XmFontList font_list;



    font = (XFontStruct *)gui.norm_font;
    if (font == ((void*)0))
 return;

    font_list = gui_motif_create_fontlist(font);


    for (do_replace = 0; do_replace <= 1; ++do_replace)
    {
 frdp = (do_replace) ? (&repl_widgets) : (&find_widgets);
 if (frdp->dialog)
 {
     XtVaSetValues(frdp->what, XmNfontList, font_list, ((void*)0));
     if (do_replace)
  XtVaSetValues(frdp->with, XmNfontList, font_list, ((void*)0));
 }
    }

    XmFontListFree(font_list);
}
