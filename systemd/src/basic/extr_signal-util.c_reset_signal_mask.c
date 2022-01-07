
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int SIG_SETMASK ;
 int errno ;
 scalar_t__ sigemptyset (int *) ;
 scalar_t__ sigprocmask (int ,int *,int *) ;

int reset_signal_mask(void) {
        sigset_t ss;

        if (sigemptyset(&ss) < 0)
                return -errno;

        if (sigprocmask(SIG_SETMASK, &ss, ((void*)0)) < 0)
                return -errno;

        return 0;
}
