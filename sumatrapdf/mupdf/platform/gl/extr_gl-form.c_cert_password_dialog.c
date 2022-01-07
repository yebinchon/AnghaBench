
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gridsize; int * dialog; } ;


 int B ;
 int NONE ;
 int NW ;
 int R ;
 int S ;
 int T ;
 int UI_INPUT_ACCEPT ;
 int X ;
 int cert_password ;
 int do_sign () ;
 TYPE_1__ ui ;
 scalar_t__ ui_button (char*) ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_input (int *,int,int) ;
 int ui_label (char*) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_panel_begin (int ,int,int ,int ,int ) ;
 int ui_panel_end () ;
 int ui_spacer () ;

__attribute__((used)) static void cert_password_dialog(void)
{
 int is;
 ui_dialog_begin(400, (ui.gridsize+4)*3);
 {
  ui_layout(T, X, NW, 2, 2);
  ui_label("Password:");
  is = ui_input(&cert_password, 200, 1);

  ui_layout(B, X, NW, 2, 2);
  ui_panel_begin(0, ui.gridsize, 0, 0, 0);
  {
   ui_layout(R, NONE, S, 0, 0);
   if (ui_button("Cancel"))
    ui.dialog = ((void*)0);
   ui_spacer();
   if (ui_button("Okay") || is == UI_INPUT_ACCEPT)
   {
    ui.dialog = ((void*)0);
    do_sign();
   }
  }
  ui_panel_end();
 }
 ui_dialog_end();
}
