
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int runContext; int classObject; int RpcRegistration; int entry; } ;
typedef TYPE_1__ RegisteredClass ;


 int CLSCTX_LOCAL_SERVER ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int IUnknown_Release (int ) ;
 int RPC_StopLocalServer (int ) ;
 int list_remove (int *) ;

__attribute__((used)) static void COM_RevokeRegisteredClassObject(RegisteredClass *curClass)
{
    list_remove(&curClass->entry);

    if (curClass->runContext & CLSCTX_LOCAL_SERVER)
        RPC_StopLocalServer(curClass->RpcRegistration);

    IUnknown_Release(curClass->classObject);
    HeapFree(GetProcessHeap(), 0, curClass);
}
