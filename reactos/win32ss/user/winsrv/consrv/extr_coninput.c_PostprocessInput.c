
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_3__ {int ReadWaitQueue; } ;
typedef TYPE_1__* PCONSRV_CONSOLE ;


 int CsrDereferenceWait (int *) ;
 int CsrNotifyWait (int *,int ,int *,int *) ;
 int FALSE ;
 int IsListEmpty (int *) ;

__attribute__((used)) static VOID
PostprocessInput(PCONSRV_CONSOLE Console)
{
    CsrNotifyWait(&Console->ReadWaitQueue,
                  FALSE,
                  ((void*)0),
                  ((void*)0));
    if (!IsListEmpty(&Console->ReadWaitQueue))
    {
        CsrDereferenceWait(&Console->ReadWaitQueue);
    }
}
