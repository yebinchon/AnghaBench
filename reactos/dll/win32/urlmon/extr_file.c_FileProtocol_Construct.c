
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int * lpVtbl; } ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_11__ {int ref; TYPE_3__ IUnknown_outer; int * outer; scalar_t__ priority; int file; TYPE_2__ IInternetPriority_iface; TYPE_1__ IInternetProtocolEx_iface; } ;
typedef TYPE_3__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;
typedef TYPE_4__ FileProtocol ;


 int FilePriorityVtbl ;
 int FileProtocolExVtbl ;
 int FileProtocolUnkVtbl ;
 int INVALID_HANDLE_VALUE ;
 int S_OK ;
 int TRACE (char*,int *,TYPE_3__**) ;
 int URLMON_LockModule () ;
 TYPE_4__* heap_alloc (int) ;

HRESULT FileProtocol_Construct(IUnknown *outer, LPVOID *ppobj)
{
    FileProtocol *ret;

    TRACE("(%p %p)\n", outer, ppobj);

    URLMON_LockModule();

    ret = heap_alloc(sizeof(FileProtocol));

    ret->IUnknown_outer.lpVtbl = &FileProtocolUnkVtbl;
    ret->IInternetProtocolEx_iface.lpVtbl = &FileProtocolExVtbl;
    ret->IInternetPriority_iface.lpVtbl = &FilePriorityVtbl;
    ret->file = INVALID_HANDLE_VALUE;
    ret->priority = 0;
    ret->ref = 1;
    ret->outer = outer ? outer : (IUnknown*)&ret->IUnknown_outer;

    *ppobj = &ret->IUnknown_outer;
    return S_OK;
}
