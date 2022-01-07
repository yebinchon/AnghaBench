
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int obj; } ;
struct TYPE_3__ {int gridsize; int lineheight; scalar_t__ key; int * dialog; int focus; } ;


 int B ;
 scalar_t__ KEY_ESCAPE ;
 int NONE ;
 int NW ;
 int PDF_FIELD_IS_READ_ONLY ;
 int R ;
 int S ;
 int T ;
 int X ;
 int * cert_file_dialog ;
 int cert_file_filter ;
 int cert_filename ;
 int ctx ;
 int filename ;
 int fz_strlcpy (int ,int ,int) ;
 int pdf_field_flags (int ,int ) ;
 char* pdf_field_label (int ,int ) ;
 TYPE_2__* sig_widget ;
 TYPE_1__ ui ;
 scalar_t__ ui_button (char*) ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_init_open_file (char*,int ) ;
 int ui_label (char*,...) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_panel_begin (int ,int,int ,int ,int ) ;
 int ui_panel_end () ;
 int ui_spacer () ;

__attribute__((used)) static void sig_sign_dialog(void)
{
 const char *label = pdf_field_label(ctx, sig_widget->obj);

 ui_dialog_begin(400, (ui.gridsize+4)*3 + ui.lineheight*10);
 {
  ui_layout(T, X, NW, 2, 2);

  ui_label("%s", label);
  ui_spacer();

  ui_label("Would you like to sign this field?");

  ui_layout(B, X, NW, 2, 2);
  ui_panel_begin(0, ui.gridsize, 0, 0, 0);
  {
   ui_layout(R, NONE, S, 0, 0);
   if (ui_button("Cancel") || (!ui.focus && ui.key == KEY_ESCAPE))
    ui.dialog = ((void*)0);
   ui_spacer();
   if (!(pdf_field_flags(ctx, sig_widget->obj) & PDF_FIELD_IS_READ_ONLY))
   {
    if (ui_button("Sign"))
    {
     fz_strlcpy(cert_filename, filename, sizeof cert_filename);
     ui_init_open_file(".", cert_file_filter);
     ui.dialog = cert_file_dialog;
    }
   }
  }
  ui_panel_end();
 }
 ui_dialog_end();
}
