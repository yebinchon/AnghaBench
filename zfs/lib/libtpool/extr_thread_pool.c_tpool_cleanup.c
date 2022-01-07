
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tp_mutex; } ;
typedef TYPE_1__ tpool_t ;


 int pthread_mutex_unlock (int *) ;

__attribute__((used)) static void
tpool_cleanup(void *arg)
{
 tpool_t *tpool = (tpool_t *)arg;

 pthread_mutex_unlock(&tpool->tp_mutex);
}
