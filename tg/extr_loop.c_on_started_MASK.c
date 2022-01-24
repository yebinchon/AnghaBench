#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct tgl_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dlist_cb ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int safe_quit ; 
 char* start_command ; 
 int /*<<< orphan*/  FUNC3 (struct tgl_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ wait_dialog_list ; 

void FUNC4 (struct tgl_state *TLS) {
  if (wait_dialog_list) {
    wait_dialog_list = 0;
    FUNC3 (TLS, 100, 0, dlist_cb, 0);
    return;
  }
  #ifdef USE_LUA
    lua_diff_end ();
  #endif

  #ifdef USE_PYTHON
    py_diff_end ();
  #endif
  
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
      FUNC0 (start, 0);
    }
  }
}