
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_3__ {int m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;
typedef int kcondvar_t ;


 int VERIFY0 (int ) ;
 int memset (int *,int ,int) ;
 int pthread_cond_wait (int *,int *) ;
 int pthread_self () ;

void
cv_wait(kcondvar_t *cv, kmutex_t *mp)
{
 memset(&mp->m_owner, 0, sizeof (pthread_t));
 VERIFY0(pthread_cond_wait(cv, &mp->m_lock));
 mp->m_owner = pthread_self();
}
