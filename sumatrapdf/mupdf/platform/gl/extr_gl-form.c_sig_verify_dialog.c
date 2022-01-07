
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
 int L ;
 int NONE ;
 int NW ;
 int R ;
 int S ;
 int T ;
 int X ;
 int ctx ;
 int do_clear_signature () ;
 char* pdf_field_label (int ,int ) ;
 int pdf_signature_error_description (scalar_t__) ;
 scalar_t__ sig_cert_error ;
 int sig_designated_name ;
 scalar_t__ sig_digest_error ;
 scalar_t__ sig_subsequent_edits ;
 TYPE_2__* sig_widget ;
 TYPE_1__ ui ;
 scalar_t__ ui_button (char*) ;
 int ui_dialog_begin (int,int) ;
 int ui_dialog_end () ;
 int ui_label (char*,...) ;
 int ui_layout (int ,int ,int ,int,int) ;
 int ui_panel_begin (int ,int,int ,int ,int ) ;
 int ui_panel_end () ;
 int ui_spacer () ;

__attribute__((used)) static void sig_verify_dialog(void)
{
 const char *label = pdf_field_label(ctx, sig_widget->obj);

 ui_dialog_begin(400, (ui.gridsize+4)*3 + ui.lineheight*10);
 {
  ui_layout(T, X, NW, 2, 2);

  ui_label("%s", label);
  ui_spacer();

  ui_label("Designated name: %s.", sig_designated_name);
  ui_spacer();

  if (sig_cert_error)
   ui_label("Certificate error: %s", pdf_signature_error_description(sig_cert_error));
  else
   ui_label("Certificate is trusted.");

  ui_spacer();

  if (sig_digest_error)
   ui_label("Digest error: %s", pdf_signature_error_description(sig_digest_error));
  else if (sig_subsequent_edits)
   ui_label("The signature is valid but there have been edits since signing.");
  else
   ui_label("The document is unchanged since signing.");

  ui_layout(B, X, NW, 2, 2);
  ui_panel_begin(0, ui.gridsize, 0, 0, 0);
  {
   ui_layout(L, NONE, S, 0, 0);
   if (ui_button("Clear"))
   {
    ui.dialog = ((void*)0);
    do_clear_signature();
   }
   ui_layout(R, NONE, S, 0, 0);
   if (ui_button("Close") || (!ui.focus && ui.key == KEY_ESCAPE))
    ui.dialog = ((void*)0);
  }
  ui_panel_end();
 }
 ui_dialog_end();
}
