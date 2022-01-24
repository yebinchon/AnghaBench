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
 int /*<<< orphan*/  COLOR_YELLOW ; 
 int /*<<< orphan*/  TELEGRAM_CLI_VERSION ; 
 int /*<<< orphan*/  TGL_VERSION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC3 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC4 (struct in_ev*) ; 
 int /*<<< orphan*/  FUNC5 (struct in_ev*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct in_ev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 

void FUNC7 (struct command *command, int arg_num, struct arg args[], struct in_ev *ev) {
  FUNC0 (!arg_num);
  if (ev) { FUNC4 (ev); }
  FUNC6 (ev, COLOR_YELLOW);
  FUNC5 (ev, "Telegram-cli version %s (uses tgl version %s)\n", TELEGRAM_CLI_VERSION, TGL_VERSION);
  #ifdef TGL_AVOID_OPENSSL 
    mprintf (ev, "uses libgcrypt for encryption\n");
  #else
    FUNC5 (ev, "uses libopenssl for encryption\n");
  #endif
  FUNC2 (ev);
  if (ev) { FUNC3 (ev); }
  if (!ev) {
    FUNC1 (stdout);
  }

}