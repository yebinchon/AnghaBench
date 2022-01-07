
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int gridsize; scalar_t__ key; int * dialog; int focus; } ;
struct TYPE_4__ {int text; } ;


 int B ;
 scalar_t__ KEY_ESCAPE ;
 int NONE ;
 int NW ;
 int R ;
 int S ;
 int T ;
 int UI_INPUT_ACCEPT ;
 int X ;
 int glutLeaveMainLoop () ;
 TYPE_1__ input_password ;
 int password ;
 int reload () ;
 int shrinkwrap () ;
 TYPE_2__ ui ;
 scalar_t__ ui_button (char*) ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_input (TYPE_1__*,int,int) ;
 int ui_label (char*) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_panel_begin (int ,int,int ,int ,int ) ;
 int ui_panel_end () ;
 int ui_spacer () ;

__attribute__((used)) static void password_dialog(void)
{
 int is;
 ui_dialog_begin(400, (ui.gridsize+4)*3);
 {
  ui_layout(T, X, NW, 2, 2);
  ui_label("Password:");
  is = ui_input(&input_password, 200, 1);

  ui_layout(B, X, NW, 2, 2);
  ui_panel_begin(0, ui.gridsize, 0, 0, 0);
  {
   ui_layout(R, NONE, S, 0, 0);
   if (ui_button("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
    glutLeaveMainLoop();
   ui_spacer();
   if (ui_button("Okay") || is == UI_INPUT_ACCEPT)
   {
    password = input_password.text;
    ui.dialog = ((void*)0);
    reload();
    shrinkwrap();
   }
  }
  ui_panel_end();
 }
 ui_dialog_end();
}
