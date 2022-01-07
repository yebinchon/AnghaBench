
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal {int signo; int signame; } ;


 int ASSERT (int) ;
 int NOT_REACHED () ;







 int exit (int) ;
 void log_level_down () ;
 void log_level_up () ;
 void log_reopen () ;
 int log_safe (char*,int,int ,char*) ;
 int log_stacktrace () ;
 int raise (int const) ;
 struct signal* signals ;

void
signal_handler(int signo)
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
    ASSERT(sig->signo != 0);

    actionstr = "";
    action = ((void*)0);
    done = 0;

    switch (signo) {
    case 129:
        break;

    case 128:
        break;

    case 131:
        actionstr = ", up logging level";
        action = log_level_up;
        break;

    case 130:
        actionstr = ", down logging level";
        action = log_level_down;
        break;

    case 134:
        actionstr = ", reopening log file";
        action = log_reopen;
        break;

    case 133:
        done = 1;
        actionstr = ", exiting";
        break;

    case 132:
        log_stacktrace();
        actionstr = ", core dumping";
        raise(132);
        break;

    default:
        NOT_REACHED();
    }

    log_safe("signal %d (%s) received%s", signo, sig->signame, actionstr);

    if (action != ((void*)0)) {
        action();
    }

    if (done) {
        exit(1);
    }
}
