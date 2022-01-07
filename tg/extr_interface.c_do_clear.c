
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct in_ev {int dummy; } ;
struct event_base {int dummy; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;
struct TYPE_3__ {struct event_base* ev_base; } ;


 TYPE_1__* TLS ;
 scalar_t__ auth_file_name ;
 scalar_t__ binlog_file_name ;
 int clear_history () ;
 scalar_t__ config_filename ;
 int default_username ;
 int do_halt (int ) ;
 scalar_t__ downloads_directory ;
 int event_base_free (struct event_base*) ;
 int event_free (int ) ;
 int free (int ) ;
 scalar_t__ home_directory ;
 int logprintf (char*,...) ;
 scalar_t__ lua_file ;
 scalar_t__ python_file ;
 scalar_t__ secret_chat_file_name ;
 scalar_t__ state_file_name ;
 int term_ev ;
 int tfree_str (scalar_t__) ;
 int tgl_free_all (TYPE_1__*) ;
 int tgl_get_allocated_bytes () ;

void do_clear (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  logprintf ("Do_clear\n");
  free (default_username);
  tfree_str (config_filename);

  tfree_str (auth_file_name);
  tfree_str (state_file_name);
  tfree_str (secret_chat_file_name);
  tfree_str (downloads_directory);

  tfree_str (binlog_file_name);
  tfree_str (lua_file);
  tfree_str (python_file);
  if (home_directory) {
    tfree_str (home_directory);
  }
  clear_history ();
  event_free (term_ev);
  struct event_base *ev_base = TLS->ev_base;
  tgl_free_all (TLS);
  event_base_free (ev_base);
  logprintf ("Bytes left allocated: %lld\n", tgl_get_allocated_bytes ());
  do_halt (0);
}
