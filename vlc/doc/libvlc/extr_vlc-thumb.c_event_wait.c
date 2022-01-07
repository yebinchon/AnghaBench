
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_sec; } ;


 int CLOCK_MONOTONIC ;
 int ETIMEDOUT ;
 int VLC_THUMBNAIL_TIMEOUT ;
 int assert (int) ;
 int clock_gettime (int ,struct timespec*) ;
 scalar_t__ done ;
 int exit (int) ;
 int fprintf (int ,char*,char const*,int) ;
 int lock ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;
 int wait ;

__attribute__((used)) static void event_wait(const char *error)
{
    int ret;
    struct timespec ts;


    clock_gettime(CLOCK_MONOTONIC, &ts);
    ts.tv_sec += 5;
    pthread_mutex_lock(&lock);
    ret = done ? 0 : pthread_cond_timedwait(&wait, &lock, &ts);
    pthread_mutex_unlock(&lock);

    assert(!ret || ret == ETIMEDOUT);

    if (ret) {
        fprintf(stderr,
                "%s (timeout after %d secs!\n", error, 5);
        exit(1);
    }
}
