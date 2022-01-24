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
struct in_ev {int dummy; } ;
struct event_base {int dummy; } ;
struct command {int dummy; } ;
struct arg {int dummy; } ;
struct TYPE_3__ {struct event_base* ev_base; } ;

/* Variables and functions */
 TYPE_1__* TLS ; 
 scalar_t__ auth_file_name ; 
 scalar_t__ binlog_file_name ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ config_filename ; 
 int /*<<< orphan*/  default_username ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ downloads_directory ; 
 int /*<<< orphan*/  FUNC2 (struct event_base*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ home_directory ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ lua_file ; 
 scalar_t__ python_file ; 
 scalar_t__ secret_chat_file_name ; 
 scalar_t__ state_file_name ; 
 int /*<<< orphan*/  term_ev ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 () ; 

void FUNC9 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC5 ("Do_clear\n");
  FUNC4 (default_username);
  FUNC6 (config_filename);
  //free (prefix);
  FUNC6 (auth_file_name);
  FUNC6 (state_file_name);
  FUNC6 (secret_chat_file_name);
  FUNC6 (downloads_directory);
  //tfree_str (config_directory);
  FUNC6 (binlog_file_name);
  FUNC6 (lua_file);
  FUNC6 (python_file);
  if (home_directory) {
    FUNC6 (home_directory);
  }
  FUNC0 ();
  FUNC3 (term_ev);
  struct event_base *ev_base = TLS->ev_base;
  FUNC7 (TLS);
  FUNC2 (ev_base);
  FUNC5 ("Bytes left allocated: %lld\n", FUNC8 ());
  FUNC1 (0);
}