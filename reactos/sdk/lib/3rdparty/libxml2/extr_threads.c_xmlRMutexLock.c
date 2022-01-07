
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* xmlRMutexPtr ;
struct TYPE_8__ {scalar_t__ tid; } ;
struct TYPE_7__ {int held; int count; TYPE_3__* lock; int cs; int tid; int waiters; int cv; } ;


 int EnterCriticalSection (int *) ;
 scalar_t__ find_thread (int *) ;
 scalar_t__ libxml_is_threaded ;
 int pthread_cond_wait (int *,TYPE_3__**) ;
 scalar_t__ pthread_equal (int ,int ) ;
 int pthread_mutex_lock (TYPE_3__**) ;
 int pthread_mutex_unlock (TYPE_3__**) ;
 int pthread_self () ;
 int xmlMutexLock (TYPE_3__*) ;

void
xmlRMutexLock(xmlRMutexPtr tok)
{
    if (tok == ((void*)0))
        return;
}
