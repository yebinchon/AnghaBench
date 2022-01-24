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
struct command {int dummy; } ;
struct arg {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TLS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*,char*,char*) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC6 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (!arg_num);
  static char stat_buf[1 << 15];
  FUNC5 (TLS, stat_buf, (1 << 15) - 1);
  if (ev) { FUNC3 (ev); }
  FUNC4 (ev, "%s\n", stat_buf);
  if (ev) { FUNC2 (ev); }
  if (!ev) {
    FUNC1 (stdout);
  }
}