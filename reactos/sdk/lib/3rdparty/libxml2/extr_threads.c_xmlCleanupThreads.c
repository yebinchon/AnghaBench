
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int memory; struct TYPE_4__* next; } ;
typedef TYPE_1__ xmlGlobalStateCleanupHelperParams ;


 int DeleteCriticalSection (int *) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 scalar_t__ TLS_OUT_OF_INDEXES ;
 int TlsFree (scalar_t__) ;
 int cleanup_helpers_cs ;
 TYPE_1__* cleanup_helpers_head ;
 int free (TYPE_1__*) ;
 scalar_t__ globalkey ;
 scalar_t__ libxml_is_threaded ;
 int once_control ;
 int once_control_init ;
 int pthread_key_delete (scalar_t__) ;
 int xmlFreeGlobalState (int ) ;
 int xmlGenericError (int ,char*) ;
 int xmlGenericErrorContext ;

void
xmlCleanupThreads(void)
{
}
