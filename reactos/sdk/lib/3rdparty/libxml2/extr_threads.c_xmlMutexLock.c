
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlMutexPtr ;
struct TYPE_3__ {int tid; int sem; int mutex; int lock; } ;


 scalar_t__ B_NO_ERROR ;
 int INFINITE ;
 int WaitForSingleObject (int ,int ) ;
 scalar_t__ acquire_sem (int ) ;
 int find_thread (int *) ;
 scalar_t__ libxml_is_threaded ;
 int pthread_mutex_lock (int *) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

void
xmlMutexLock(xmlMutexPtr tok)
{
    if (tok == ((void*)0))
        return;
}
