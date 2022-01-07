
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dialog; int * focus; } ;


 scalar_t__* cert_filename ;
 int cert_password ;
 int * cert_password_dialog ;
 TYPE_1__ ui ;
 int ui_input_init (int *,char*) ;
 scalar_t__ ui_open_file (scalar_t__*) ;

__attribute__((used)) static void cert_file_dialog(void)
{
 if (ui_open_file(cert_filename))
 {
  if (cert_filename[0] != 0)
  {
   ui_input_init(&cert_password, "");
   ui.focus = &cert_password;
   ui.dialog = cert_password_dialog;
  }
  else
   ui.dialog = ((void*)0);
 }
}
