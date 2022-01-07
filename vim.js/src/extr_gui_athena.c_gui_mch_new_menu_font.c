
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int id; int dname; struct TYPE_5__* next; } ;
typedef TYPE_1__ vimmenu_T ;
typedef scalar_t__ Widget ;
struct TYPE_6__ {int menu_height; int dpy; int menu_height_fixed; } ;
typedef int Position ;
typedef scalar_t__ Pixmap ;
typedef int Dimension ;


 int FALSE ;
 scalar_t__ None ;
 int RESIZE_VERT ;
 int TRUE ;
 int XFreePixmap (int ,scalar_t__) ;
 int XtNborderWidth ;
 int XtNheight ;
 int XtNvSpace ;
 int XtNwidth ;
 int XtVaGetValues (scalar_t__,int ,int*,int ,...) ;
 TYPE_4__ gui ;
 scalar_t__ gui_athena_create_pullright_pixmap (int *) ;
 int gui_mch_submenu_change (TYPE_1__*,int ) ;
 int gui_resize_shell (int,int) ;
 int gui_set_shellsize (int ,int ,int ) ;
 scalar_t__ menuBar ;
 scalar_t__ menu_is_menubar (int ) ;
 scalar_t__ pullerBitmap ;
 TYPE_1__* root_menu ;
 int ui_new_shellsize () ;
 scalar_t__ vimShell ;
 int xim_get_status_area_height () ;

void
gui_mch_new_menu_font()
{
    Pixmap oldpuller = None;

    if (menuBar == (Widget)0)
 return;

    if (pullerBitmap != None)
    {
 oldpuller = pullerBitmap;
 pullerBitmap = gui_athena_create_pullright_pixmap(((void*)0));
    }
    gui_mch_submenu_change(root_menu, FALSE);

    {




 vimmenu_T *mp;
 int max_height = 9999;

 for (mp = root_menu; mp != ((void*)0); mp = mp->next)
 {
     if (menu_is_menubar(mp->dname))
     {
  Dimension height;

  XtVaGetValues(mp->id,
   XtNheight, &height,
   ((void*)0));
  if (height < max_height)
      max_height = height;
     }
 }
 if (max_height != 9999)
 {

     if (!gui.menu_height_fixed)
     {
  Dimension space, border;

  XtVaGetValues(menuBar,
   XtNvSpace, &space,
   XtNborderWidth, &border,
   ((void*)0));
  gui.menu_height = max_height + 2 * (space + border);
     }
 }
    }






    {
 Position w, h;

 XtVaGetValues(vimShell,
  XtNwidth, &w,
  XtNheight, &h,
  ((void*)0));
 gui_resize_shell(w, h



       );
    }
    gui_set_shellsize(FALSE, TRUE, RESIZE_VERT);
    ui_new_shellsize();
    if (oldpuller != None)
 XFreePixmap(gui.dpy, oldpuller);
}
