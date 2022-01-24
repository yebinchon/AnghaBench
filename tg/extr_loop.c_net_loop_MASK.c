#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  active_queries; int /*<<< orphan*/  ev_base; } ;

/* Variables and functions */
 int /*<<< orphan*/  EVLOOP_ONCE ; 
 int EV_PERSIST ; 
 int EV_READ ; 
 scalar_t__ E_DEBUG ; 
 TYPE_1__* TLS ; 
 scalar_t__ delete_stdin_event ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ safe_quit ; 
 scalar_t__ sigterm_cnt ; 
 int /*<<< orphan*/  stdin_read_callback ; 
 scalar_t__ term_ev ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC12 () ; 

void FUNC13 (void) {
  delete_stdin_event = 0;
  if (verbosity >= E_DEBUG) {
    FUNC5 ("Starting netloop\n");
  }
  term_ev = FUNC4 (TLS->ev_base, 0, EV_READ | EV_PERSIST, stdin_read_callback, 0);
  FUNC1 (term_ev, 0);
  
  int last_get_state = FUNC10 (0);
  while (1) {
    FUNC2 (TLS->ev_base, EVLOOP_ONCE);

    if (term_ev && delete_stdin_event) {
      FUNC5 ("delete stdin\n");
      FUNC3 (term_ev);
      term_ev = 0;
    }

    #ifdef USE_LUA
      lua_do_all ();
    #endif
    
    #ifdef USE_PYTHON
      py_do_all ();
    #endif

    if (safe_quit && !TLS->active_queries) {
      FUNC7 ("All done. Exit\n");
      FUNC0 (0);
      safe_quit = 0;
    }
    if (sigterm_cnt > 0) {
      FUNC0 (0);
    }
    if (FUNC10 (0) - last_get_state > 3600) {
      FUNC9 (TLS);
      last_get_state = FUNC10 (0);
    }
    
    FUNC12 ();
    FUNC11 ();
    
/*    if (unknown_user_list_pos) {
      int i;
      for (i = 0; i < unknown_user_list_pos; i++) {
        tgl_do_get_user_info (TLS, TGL_MK_USER (unknown_user_list[i]), 0, 0, 0);
      }
      unknown_user_list_pos = 0;
    }   */
  }

  if (term_ev) {
    FUNC3 (term_ev);
    term_ev = 0;
  }
  
  if (verbosity >= E_DEBUG) {
    FUNC5 ("End of netloop\n");
  }
}