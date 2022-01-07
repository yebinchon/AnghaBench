
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int m_lock; } ;
typedef TYPE_1__ kmutex_t ;


 int VERIFY0 (int ) ;
 int pthread_mutex_destroy (int *) ;

void
mutex_destroy(kmutex_t *mp)
{
 VERIFY0(pthread_mutex_destroy(&mp->m_lock));
}
