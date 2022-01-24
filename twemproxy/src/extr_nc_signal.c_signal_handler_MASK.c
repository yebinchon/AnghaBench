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
struct signal {int signo; int /*<<< orphan*/  signame; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
#define  SIGHUP 134 
#define  SIGINT 133 
#define  SIGSEGV 132 
#define  SIGTTIN 131 
#define  SIGTTOU 130 
#define  SIGUSR1 129 
#define  SIGUSR2 128 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void FUNC3 () ; 
 void FUNC4 () ; 
 void FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int const) ; 
 struct signal* signals ; 

void
FUNC9(int signo)
{
    struct signal *sig;
    void (*action)(void);
    char *actionstr;
    bool done;

    for (sig = signals; sig->signo != 0; sig++) {
        if (sig->signo == signo) {
            break;
        }
    }
    FUNC0(sig->signo != 0);

    actionstr = "";
    action = NULL;
    done = false;

    switch (signo) {
    case SIGUSR1:
        break;

    case SIGUSR2:
        break;

    case SIGTTIN:
        actionstr = ", up logging level";
        action = log_level_up;
        break;

    case SIGTTOU:
        actionstr = ", down logging level";
        action = log_level_down;
        break;

    case SIGHUP:
        actionstr = ", reopening log file";
        action = log_reopen;
        break;

    case SIGINT:
        done = true;
        actionstr = ", exiting";
        break;

    case SIGSEGV:
        FUNC7();
        actionstr = ", core dumping";
        FUNC8(SIGSEGV);
        break;

    default:
        FUNC1();
    }

    FUNC6("signal %d (%s) received%s", signo, sig->signame, actionstr);

    if (action != NULL) {
        action();
    }

    if (done) {
        FUNC2(1);
    }
}