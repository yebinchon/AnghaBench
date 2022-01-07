
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ key; int * dialog; } ;


 int ALL ;
 int B ;
 int BOTH ;
 int CENTER ;
 int FZ_VERSION ;
 scalar_t__ KEY_ENTER ;
 scalar_t__ KEY_ESCAPE ;
 int NONE ;
 int S ;
 int T ;
 int W ;
 int X ;
 int help_dialog_text ;
 TYPE_1__ ui ;
 scalar_t__ ui_button (char*) ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_label (char*,int ) ;
 int ui_label_with_scrollbar (int ,int ,int ,int*) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_spacer () ;

__attribute__((used)) static void help_dialog(void)
{
 static int scroll;
 ui_dialog_begin(500, 1000);
 ui_layout(T, X, W, 2, 2);
 ui_label("MuPDF %s", FZ_VERSION);
 ui_spacer();
 ui_layout(B, NONE, S, 2, 2);
 if (ui_button("Okay") || ui.key == KEY_ENTER || ui.key == KEY_ESCAPE)
  ui.dialog = ((void*)0);
 ui_spacer();
 ui_layout(ALL, BOTH, CENTER, 2, 2);
 ui_label_with_scrollbar(help_dialog_text, 0, 0, &scroll);
 ui_dialog_end();
}
