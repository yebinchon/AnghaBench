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
struct in_ev {int dummy; } ;
struct command {int /*<<< orphan*/  desc; scalar_t__ name; } ;
struct arg {int /*<<< orphan*/  str; } ;

/* Variables and functions */
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct command* commands ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ev*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

void FUNC8 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (arg_num == 1);
  if (ev) { FUNC4 (ev); }
  int total = 0;
  FUNC6 (ev, COLOR_YELLOW);
  struct command *cmd = commands;
  while (cmd->name) {
    if (!args[0].str || !FUNC7 (args[0].str, cmd->name)) {
      FUNC5 (ev, "%s\n", cmd->desc);
      total ++;
    }
    cmd ++;
  }
  if (!total) {
    FUNC0 (arg_num == 1);
    FUNC5 (ev, "Unknown command '%s'\n", args[0].str);
  }
  FUNC2 (ev);
  if (ev) { FUNC3 (ev); }
  if (!ev) {
    FUNC1 (stdout);
  }
}