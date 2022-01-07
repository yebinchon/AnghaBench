
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tgl_state {int dummy; } ;


 int dlist_cb ;
 int interpreter_ex (char*,int ) ;
 int lua_diff_end () ;
 int py_diff_end () ;
 int safe_quit ;
 char* start_command ;
 int tgl_do_get_dialog_list (struct tgl_state*,int,int ,int ,int ) ;
 scalar_t__ wait_dialog_list ;

void on_started (struct tgl_state *TLS) {
  if (wait_dialog_list) {
    wait_dialog_list = 0;
    tgl_do_get_dialog_list (TLS, 100, 0, dlist_cb, 0);
    return;
  }
  if (start_command) {
    safe_quit = 1;
    while (*start_command) {
      char *start = start_command;
      while (*start_command && *start_command != '\n') {
        start_command ++;
      }
      if (*start_command) {
        *start_command = 0;
        start_command ++;
      }
      interpreter_ex (start, 0);
    }
  }
}
