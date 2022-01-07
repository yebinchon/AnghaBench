
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* xmlMutexPtr ;
typedef int xmlMutex ;
struct TYPE_5__ {int tid; int sem; int mutex; int lock; } ;


 int B_OK ;
 int CreateMutex (int *,int ,int *) ;
 int FALSE ;
 int create_sem (int,char*) ;
 int free (TYPE_1__*) ;
 scalar_t__ libxml_is_threaded ;
 TYPE_1__* malloc (int) ;
 int pthread_mutex_init (int *,int *) ;

xmlMutexPtr
xmlNewMutex(void)
{
    xmlMutexPtr tok;

    if ((tok = malloc(sizeof(xmlMutex))) == ((void*)0))
        return (((void*)0));
    return (tok);
}
