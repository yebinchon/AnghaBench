
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int CompartmentMgr; int TransitoryExtensionSink; scalar_t__* contextStack; int ITfDocumentMgr_iface; } ;
typedef int ITfThreadMgr ;
typedef TYPE_1__ DocumentMgr ;


 int CompartmentMgr_Destructor (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int ITfContext_Release (scalar_t__) ;
 int ITfThreadMgr_Release (int *) ;
 int TF_GetThreadMgr (int **) ;
 int TRACE (char*,TYPE_1__*) ;
 int ThreadMgr_OnDocumentMgrDestruction (int *,int *) ;
 int free_sinks (int *) ;

__attribute__((used)) static void DocumentMgr_Destructor(DocumentMgr *This)
{
    ITfThreadMgr *tm = ((void*)0);
    TRACE("destroying %p\n", This);

    TF_GetThreadMgr(&tm);
    if (tm)
    {
        ThreadMgr_OnDocumentMgrDestruction(tm, &This->ITfDocumentMgr_iface);
        ITfThreadMgr_Release(tm);
    }

    if (This->contextStack[0])
        ITfContext_Release(This->contextStack[0]);
    if (This->contextStack[1])
        ITfContext_Release(This->contextStack[1]);
    free_sinks(&This->TransitoryExtensionSink);
    CompartmentMgr_Destructor(This->CompartmentMgr);
    HeapFree(GetProcessHeap(),0,This);
}
