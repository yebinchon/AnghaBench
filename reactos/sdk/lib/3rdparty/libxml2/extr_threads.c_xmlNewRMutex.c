
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlRMutexPtr ;
typedef int xmlRMutex ;
struct TYPE_5__ {scalar_t__ count; int * lock; int cs; int cv; scalar_t__ waiters; scalar_t__ held; } ;


 int InitializeCriticalSection (int *) ;
 int free (TYPE_1__*) ;
 scalar_t__ libxml_is_threaded ;
 TYPE_1__* malloc (int) ;
 int pthread_cond_init (int *,int *) ;
 int pthread_mutex_init (int **,int *) ;
 int * xmlNewMutex () ;

xmlRMutexPtr
xmlNewRMutex(void)
{
    xmlRMutexPtr tok;

    if ((tok = malloc(sizeof(xmlRMutex))) == ((void*)0))
        return (((void*)0));
    return (tok);
}
