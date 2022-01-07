
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_3__ {int m_owner; int m_lock; } ;
typedef TYPE_1__ kmutex_t ;


 int VERIFY0 (int ) ;
 int memset (int *,int ,int) ;
 int pthread_mutex_init (int *,int *) ;

void
mutex_init(kmutex_t *mp, char *name, int type, void *cookie)
{
 VERIFY0(pthread_mutex_init(&mp->m_lock, ((void*)0)));
 memset(&mp->m_owner, 0, sizeof (pthread_t));
}
