
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int CompartmentMgr; int pTextLayoutSink; int pTextEditSink; int pStatusSink; int pEditTransactionSink; int pContextKeyEventSink; scalar_t__ defaultCookie; scalar_t__ pITfContextOwnerCompositionSink; scalar_t__ pITextStoreACP; } ;
typedef TYPE_1__ EditCookie ;
typedef TYPE_1__ Context ;


 int CompartmentMgr_Destructor (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,TYPE_1__*) ;
 int ITextStoreACP_Release (scalar_t__) ;
 int ITfContextOwnerCompositionSink_Release (scalar_t__) ;
 int TRACE (char*,TYPE_1__*) ;
 int free_sinks (int *) ;
 TYPE_1__* remove_Cookie (scalar_t__) ;

__attribute__((used)) static void Context_Destructor(Context *This)
{
    EditCookie *cookie;
    TRACE("destroying %p\n", This);

    if (This->pITextStoreACP)
        ITextStoreACP_Release(This->pITextStoreACP);

    if (This->pITfContextOwnerCompositionSink)
        ITfContextOwnerCompositionSink_Release(This->pITfContextOwnerCompositionSink);

    if (This->defaultCookie)
    {
        cookie = remove_Cookie(This->defaultCookie);
        HeapFree(GetProcessHeap(),0,cookie);
        This->defaultCookie = 0;
    }

    free_sinks(&This->pContextKeyEventSink);
    free_sinks(&This->pEditTransactionSink);
    free_sinks(&This->pStatusSink);
    free_sinks(&This->pTextEditSink);
    free_sinks(&This->pTextLayoutSink);

    CompartmentMgr_Destructor(This->CompartmentMgr);
    HeapFree(GetProcessHeap(),0,This);
}
