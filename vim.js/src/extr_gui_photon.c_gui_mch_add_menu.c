
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ mnemonic; int * submenu_id; int name; int * id; int priority; struct TYPE_12__* actext; struct TYPE_12__* dname; struct TYPE_12__* parent; } ;
typedef TYPE_1__ vimmenu_T ;
typedef TYPE_1__ char_u ;
struct TYPE_13__ {int * vimWindow; scalar_t__ menu_is_active; int * vimMenuBar; } ;
typedef int PtArg_t ;


 int MB_LEN_MAX ;
 TYPE_1__ NUL ;
 int Pk_KM_Alt ;
 int PtAddCallback (int *,int ,int ,TYPE_1__*) ;
 int PtAddHotkeyHandler (int *,int ,int ,int ,TYPE_1__*,int ) ;
 void* PtCreateWidget (int ,int *,int,int *) ;
 int PtMenu ;
 int PtMenuButton ;
 int PtRealizeWidget (int *) ;
 int PtSetArg (int *,int ,TYPE_1__*,int ) ;
 int Pt_ARG_ACCEL_KEY ;
 int Pt_ARG_ACCEL_TEXT ;
 int Pt_ARG_BUTTON_TYPE ;
 int Pt_ARG_MENU_FLAGS ;
 int Pt_ARG_POINTER ;
 int Pt_ARG_TEXT_STRING ;
 int Pt_CB_ARM ;
 int Pt_CB_UNREALIZED ;
 int Pt_MENU_CHILD ;
 TYPE_1__* Pt_MENU_RIGHT ;
 TYPE_1__* Pt_TRUE ;
 TYPE_5__ gui ;
 int gui_ph_handle_menu_unrealized ;
 int gui_ph_handle_pulldown_menu ;
 int gui_ph_position_menu (int *,int ) ;
 scalar_t__ menu_is_menubar (int ) ;
 scalar_t__ menu_is_popup (int ) ;
 int tolower (scalar_t__) ;
 TYPE_1__* vim_strchr (int ,char) ;

void
gui_mch_add_menu(vimmenu_T *menu, int index)
{
    vimmenu_T *parent = menu->parent;
    char_u *accel_key;
    char_u mnemonic_str[MB_LEN_MAX];
    int n;
    PtArg_t args[5];

    menu->submenu_id = menu->id = ((void*)0);

    if (menu_is_menubar(menu->name))
    {

 accel_key = vim_strchr(menu->name, '&');
 if (accel_key != ((void*)0))
 {
     mnemonic_str[0] = accel_key[1];
     mnemonic_str[1] = NUL;
 }


 n = 0;
 PtSetArg(&args[ n++ ], Pt_ARG_TEXT_STRING, menu->dname, 0);
 PtSetArg(&args[ n++ ], Pt_ARG_ACCEL_TEXT, menu->actext, 0);
 if (accel_key != ((void*)0))
     PtSetArg(&args[ n++ ], Pt_ARG_ACCEL_KEY, mnemonic_str, 0);
 PtSetArg(&args[ n++ ], Pt_ARG_POINTER, menu, 0);

 if (parent != ((void*)0))
     PtSetArg(&args[ n++ ], Pt_ARG_BUTTON_TYPE, Pt_MENU_RIGHT, 0);

 menu->id = PtCreateWidget(PtMenuButton,
  (parent == ((void*)0)) ? gui.vimMenuBar : parent->submenu_id,
  n, args);

 PtAddCallback(menu->id, Pt_CB_ARM, gui_ph_handle_pulldown_menu, menu);


 n = 0;
 if (parent != ((void*)0))
     PtSetArg(&args[ n++ ], Pt_ARG_MENU_FLAGS, Pt_TRUE, Pt_MENU_CHILD);

 menu->submenu_id = PtCreateWidget(PtMenu, menu->id, n, args);

 if (parent == ((void*)0))
 {
     PtAddCallback(menu->submenu_id, Pt_CB_UNREALIZED,
      gui_ph_handle_menu_unrealized, menu);

     if (menu->mnemonic != 0)
     {
  PtAddHotkeyHandler(gui.vimWindow, tolower(menu->mnemonic),
   Pk_KM_Alt, 0, menu, gui_ph_handle_pulldown_menu);
     }
 }

 gui_ph_position_menu(menu->id, menu->priority);


 if (gui.menu_is_active)
     PtRealizeWidget(menu->id);
    }
    else if (menu_is_popup(menu->name))
    {
 menu->submenu_id = PtCreateWidget(PtMenu, gui.vimWindow, 0, ((void*)0));
 PtAddCallback(menu->submenu_id, Pt_CB_UNREALIZED,
  gui_ph_handle_menu_unrealized, menu);
    }
}
