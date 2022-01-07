
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_mutex_t ;
struct TYPE_5__ {scalar_t__ hev; } ;
typedef TYPE_1__ vlc_cond_t ;


 scalar_t__ NULLHANDLE ;
 int SEM_INDEFINITE_WAIT ;
 int vlc_cond_wait_common (TYPE_1__*,int *,int ) ;
 int vlc_static_cond_init (TYPE_1__*) ;

void vlc_cond_wait (vlc_cond_t *p_condvar, vlc_mutex_t *p_mutex)
{
    if (p_condvar->hev == NULLHANDLE)
        vlc_static_cond_init (p_condvar);

    vlc_cond_wait_common (p_condvar, p_mutex, SEM_INDEFINITE_WAIT);
}
