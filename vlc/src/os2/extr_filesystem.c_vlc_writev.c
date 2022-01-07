
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int member_1; int member_0; } ;
struct iovec {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int sigset_t ;
typedef int siginfo_t ;


 scalar_t__ EAGAIN ;
 scalar_t__ EPIPE ;
 int SIGPIPE ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 scalar_t__ errno ;
 int pthread_sigmask (int ,int *,int *) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigismember (int *,int ) ;
 scalar_t__ sigtimedwait (int *,int *,struct timespec*) ;
 scalar_t__ writev (int,struct iovec const*,int) ;

ssize_t vlc_writev(int fd, const struct iovec *iov, int count)
{
    sigset_t set, oset;

    sigemptyset(&set);
    sigaddset(&set, SIGPIPE);
    pthread_sigmask(SIG_BLOCK, &set, &oset);

    ssize_t val = writev(fd, iov, count);
    if (val < 0 && errno == EPIPE)
    {
        siginfo_t info;
        struct timespec ts = { 0, 0 };

        while (sigtimedwait(&set, &info, &ts) >= 0 || errno != EAGAIN);
    }

    if (!sigismember(&oset, SIGPIPE))
        pthread_sigmask(SIG_SETMASK, &oset, ((void*)0));

    return val;
}
