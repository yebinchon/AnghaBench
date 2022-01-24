#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  send_sighup; int /*<<< orphan*/  send_sigkill; int /*<<< orphan*/  final_kill_signal; int /*<<< orphan*/  kill_signal; int /*<<< orphan*/  kill_mode; } ;
typedef  TYPE_1__ KillContext ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*,char const*,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char const*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 

void FUNC7(KillContext *c, FILE *f, const char *prefix) {
        FUNC0(c);

        prefix = FUNC5(prefix);

        FUNC1(f,
                "%sKillMode: %s\n"
                "%sKillSignal: SIG%s\n"
                "%sRestartKillSignal: SIG%s\n"
                "%sFinalKillSignal: SIG%s\n"
                "%sSendSIGKILL: %s\n"
                "%sSendSIGHUP: %s\n",
                prefix, FUNC2(c->kill_mode),
                prefix, FUNC4(c->kill_signal),
                prefix, FUNC4(FUNC3(c)),
                prefix, FUNC4(c->final_kill_signal),
                prefix, FUNC6(c->send_sigkill),
                prefix, FUNC6(c->send_sighup));
}