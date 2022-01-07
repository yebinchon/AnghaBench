
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dialog; } ;


 int filename ;
 int init_save_pdf_options () ;
 scalar_t__ pdf ;
 int pdf_filter ;
 int save_pdf_dialog ;
 TYPE_1__ ui ;
 int ui_init_save_file (int ,int ) ;

void do_save_pdf_file(void)
{
 if (pdf)
 {
  init_save_pdf_options();
  ui_init_save_file(filename, pdf_filter);
  ui.dialog = save_pdf_dialog;
 }
}
