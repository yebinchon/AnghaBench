
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_3__ {int m_lock; int m_owner; } ;
typedef TYPE_1__ kmutex_t ;


 int VERIFY0 (int ) ;
 int memset (int *,int ,int) ;
 int pthread_mutex_unlock (int *) ;

void
mutex_exit(kmutex_t *mp)
{
 memset(&mp->m_owner, 0, sizeof (pthread_t));
 VERIFY0(pthread_mutex_unlock(&mp->m_lock));
}
