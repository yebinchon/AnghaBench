
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int active_queries; int ev_base; } ;


 int EVLOOP_ONCE ;
 int EV_PERSIST ;
 int EV_READ ;
 scalar_t__ E_DEBUG ;
 TYPE_1__* TLS ;
 scalar_t__ delete_stdin_event ;
 int do_halt (int ) ;
 int event_add (scalar_t__,int ) ;
 int event_base_loop (int ,int ) ;
 int event_free (scalar_t__) ;
 scalar_t__ event_new (int ,int ,int,int ,int ) ;
 int logprintf (char*) ;
 int lua_do_all () ;
 int printf (char*) ;
 int py_do_all () ;
 scalar_t__ safe_quit ;
 scalar_t__ sigterm_cnt ;
 int stdin_read_callback ;
 scalar_t__ term_ev ;
 int tgl_do_lookup_state (TYPE_1__*) ;
 int time (int ) ;
 int update_prompt () ;
 scalar_t__ verbosity ;
 int write_state_file () ;

void net_loop (void) {
  delete_stdin_event = 0;
  if (verbosity >= E_DEBUG) {
    logprintf ("Starting netloop\n");
  }
  term_ev = event_new (TLS->ev_base, 0, EV_READ | EV_PERSIST, stdin_read_callback, 0);
  event_add (term_ev, 0);

  int last_get_state = time (0);
  while (1) {
    event_base_loop (TLS->ev_base, EVLOOP_ONCE);

    if (term_ev && delete_stdin_event) {
      logprintf ("delete stdin\n");
      event_free (term_ev);
      term_ev = 0;
    }
    if (safe_quit && !TLS->active_queries) {
      printf ("All done. Exit\n");
      do_halt (0);
      safe_quit = 0;
    }
    if (sigterm_cnt > 0) {
      do_halt (0);
    }
    if (time (0) - last_get_state > 3600) {
      tgl_do_lookup_state (TLS);
      last_get_state = time (0);
    }

    write_state_file ();
    update_prompt ();
  }

  if (term_ev) {
    event_free (term_ev);
    term_ev = 0;
  }

  if (verbosity >= E_DEBUG) {
    logprintf ("End of netloop\n");
  }
}
