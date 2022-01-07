
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tp_flags; int tp_mutex; } ;
typedef TYPE_1__ tpool_t ;


 int ASSERT (int) ;
 int TP_ABANDON ;
 int TP_DESTROY ;
 int TP_SUSPEND ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

int
tpool_suspended(tpool_t *tpool)
{
 int suspended;

 ASSERT(!(tpool->tp_flags & (TP_DESTROY | TP_ABANDON)));

 pthread_mutex_lock(&tpool->tp_mutex);
 suspended = (tpool->tp_flags & TP_SUSPEND) != 0;
 pthread_mutex_unlock(&tpool->tp_mutex);

 return (suspended);
}
