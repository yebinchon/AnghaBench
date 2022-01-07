
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list {int dummy; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int refCount; TYPE_1__ IEnumTfDocumentMgrs_iface; struct list* head; int index; } ;
typedef TYPE_1__ IEnumTfDocumentMgrs ;
typedef int HRESULT ;
typedef TYPE_2__ EnumTfDocumentMgr ;


 int E_OUTOFMEMORY ;
 int EnumTfDocumentMgrsVtbl ;
 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*) ;
 int list_head (struct list*) ;

__attribute__((used)) static HRESULT EnumTfDocumentMgr_Constructor(struct list* head, IEnumTfDocumentMgrs **ppOut)
{
    EnumTfDocumentMgr *This;

    This = HeapAlloc(GetProcessHeap(),HEAP_ZERO_MEMORY,sizeof(EnumTfDocumentMgr));
    if (This == ((void*)0))
        return E_OUTOFMEMORY;

    This->IEnumTfDocumentMgrs_iface.lpVtbl= &EnumTfDocumentMgrsVtbl;
    This->refCount = 1;
    This->head = head;
    This->index = list_head(This->head);

    TRACE("returning %p\n", &This->IEnumTfDocumentMgrs_iface);
    *ppOut = &This->IEnumTfDocumentMgrs_iface;
    return S_OK;
}
