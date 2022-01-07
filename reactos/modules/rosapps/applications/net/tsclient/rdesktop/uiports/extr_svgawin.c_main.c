
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_username_and_hostname () ;
 int parse_parameters (int,char**) ;
 int ui_create_window () ;
 int ui_deinit () ;
 int ui_destroy_window () ;
 int ui_init () ;
 int ui_main_loop () ;

int main(int in_argc, char** in_argv)
{
  get_username_and_hostname();
  if (!parse_parameters(in_argc, in_argv))
    return 0;
  if (!ui_init())
    return 1;
  if (!ui_create_window())
    return 1;
  ui_main_loop();
  ui_destroy_window();
  ui_deinit();
  return 0;
}
