
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_mutex_t ;
struct TYPE_3__ {scalar_t__ hev; int hevAck; int waiters; int signaled; } ;
typedef TYPE_1__ vlc_cond_t ;
typedef scalar_t__ ULONG ;


 int DosPostEventSem (int ) ;
 int DosResetEventSem (scalar_t__,scalar_t__*) ;
 scalar_t__ ERROR_INTERRUPT ;
 int ETIMEDOUT ;
 scalar_t__ NO_ERROR ;
 scalar_t__ NULLHANDLE ;
 scalar_t__ __atomic_cmpxchg32 (int *,int ,int) ;
 int __atomic_decrement (int *) ;
 int __atomic_increment (int *) ;
 int assert (int) ;
 scalar_t__ vlc_WaitForSingleObject (scalar_t__,scalar_t__) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 int vlc_testcancel () ;

__attribute__((used)) static int vlc_cond_wait_common (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex,
                                 ULONG ulTimeout)
{
    ULONG ulPost;
    ULONG rc;

    assert(p_condvar->hev != NULLHANDLE);

    do
    {
        vlc_testcancel();

        __atomic_increment (&p_condvar->waiters);

        vlc_mutex_unlock (p_mutex);

        do
        {
            rc = vlc_WaitForSingleObject( p_condvar->hev, ulTimeout );
            if (rc == NO_ERROR)
                DosResetEventSem (p_condvar->hev, &ulPost);
        } while (rc == NO_ERROR &&
                 __atomic_cmpxchg32 (&p_condvar->signaled, 0, 1) == 0);

        __atomic_decrement (&p_condvar->waiters);

        DosPostEventSem (p_condvar->hevAck);

        vlc_mutex_lock (p_mutex);
    } while( rc == ERROR_INTERRUPT );

    return rc ? ETIMEDOUT : 0;
}
