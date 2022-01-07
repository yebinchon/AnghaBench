
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int page; int obj; } ;
struct TYPE_7__ {int gridsize; int lineheight; scalar_t__ key; int * dialog; int focus; } ;
struct TYPE_6__ {int text; } ;


 int B ;
 scalar_t__ KEY_ESCAPE ;
 int NONE ;
 int NW ;
 int PDF_TX_FIELD_IS_MULTILINE ;
 int R ;
 int S ;
 int T ;
 int UI_INPUT_ACCEPT ;
 int X ;
 int ctx ;
 int pdf_field_flags (int ,int ) ;
 char* pdf_field_label (int ,int ) ;
 int pdf_set_text_field_value (int ,TYPE_3__*,int ) ;
 scalar_t__ pdf_update_page (int ,int ) ;
 int render_page () ;
 TYPE_1__ tx_input ;
 TYPE_3__* tx_widget ;
 TYPE_2__ ui ;
 int ui_break_lines (char*,int *,int,int,int *) ;
 scalar_t__ ui_button (char*) ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_input (TYPE_1__*,int,int) ;
 int ui_label (char*,char const*) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_panel_begin (int ,int,int ,int ,int ) ;
 int ui_panel_end () ;
 int ui_spacer () ;

__attribute__((used)) static void tx_dialog(void)
{
 int ff = pdf_field_flags(ctx, tx_widget->obj);
 const char *label = pdf_field_label(ctx, tx_widget->obj);
 int tx_h = (ff & PDF_TX_FIELD_IS_MULTILINE) ? 10 : 1;
 int lbl_h = ui_break_lines((char*)label, ((void*)0), 20, 394, ((void*)0));
 int is;

 ui_dialog_begin(400, (ui.gridsize+4)*3 + ui.lineheight*(tx_h+lbl_h-2));
 {
  ui_layout(T, X, NW, 2, 2);
  ui_label("%s", label);
  is = ui_input(&tx_input, 200, tx_h);

  ui_layout(B, X, NW, 2, 2);
  ui_panel_begin(0, ui.gridsize, 0, 0, 0);
  {
   ui_layout(R, NONE, S, 0, 0);
   if (ui_button("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
    ui.dialog = ((void*)0);
   ui_spacer();
   if (ui_button("Okay") || is == UI_INPUT_ACCEPT)
   {
    pdf_set_text_field_value(ctx, tx_widget, tx_input.text);
    if (pdf_update_page(ctx, tx_widget->page))
     render_page();
    ui.dialog = ((void*)0);
   }
  }
  ui_panel_end();
 }
 ui_dialog_end();
}
