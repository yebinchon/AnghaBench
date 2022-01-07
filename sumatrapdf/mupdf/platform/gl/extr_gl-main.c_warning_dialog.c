
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gridsize; scalar_t__ key; int * dialog; } ;


 int B ;
 scalar_t__ KEY_ENTER ;
 scalar_t__ KEY_ESCAPE ;
 int NONE ;
 int NW ;
 int S ;
 int T ;
 TYPE_1__ ui ;
 scalar_t__ ui_button (char*) ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_label (char*,int,int ) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int warning_message ;

__attribute__((used)) static void warning_dialog(void)
{
 ui_dialog_begin(500, (ui.gridsize+4)*4);
 ui_layout(T, NONE, NW, 2, 2);
 ui_label("%C %s", 0x26a0, warning_message);
 ui_layout(B, NONE, S, 2, 2);
 if (ui_button("Okay") || ui.key == KEY_ENTER || ui.key == KEY_ESCAPE)
  ui.dialog = ((void*)0);
 ui_dialog_end();
}
