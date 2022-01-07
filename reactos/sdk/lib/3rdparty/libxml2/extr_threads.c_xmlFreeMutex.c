
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlMutexPtr ;
struct TYPE_4__ {int sem; int mutex; int lock; } ;


 int CloseHandle (int ) ;
 int delete_sem (int ) ;
 int free (TYPE_1__*) ;
 scalar_t__ libxml_is_threaded ;
 int pthread_mutex_destroy (int *) ;

void
xmlFreeMutex(xmlMutexPtr tok)
{
    if (tok == ((void*)0))
        return;
    free(tok);
}
