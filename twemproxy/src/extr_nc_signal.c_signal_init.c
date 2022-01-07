
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct signal {scalar_t__ signo; int signame; int flags; int handler; } ;
struct sigaction {int sa_mask; int sa_flags; int sa_handler; } ;
typedef int sa ;
typedef scalar_t__ rstatus_t ;


 scalar_t__ NC_ERROR ;
 scalar_t__ NC_OK ;
 int errno ;
 int log_error (char*,int ,int ) ;
 int memset (struct sigaction*,int ,int) ;
 scalar_t__ sigaction (scalar_t__,struct sigaction*,int *) ;
 int sigemptyset (int *) ;
 struct signal* signals ;
 int strerror (int ) ;

rstatus_t
signal_init(void)
{
    struct signal *sig;

    for (sig = signals; sig->signo != 0; sig++) {
        rstatus_t status;
        struct sigaction sa;

        memset(&sa, 0, sizeof(sa));
        sa.sa_handler = sig->handler;
        sa.sa_flags = sig->flags;
        sigemptyset(&sa.sa_mask);

        status = sigaction(sig->signo, &sa, ((void*)0));
        if (status < 0) {
            log_error("sigaction(%s) failed: %s", sig->signame,
                      strerror(errno));
            return NC_ERROR;
        }
    }

    return NC_OK;
}
