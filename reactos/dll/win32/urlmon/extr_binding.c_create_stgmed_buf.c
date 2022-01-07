
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int ref; int * protocol; int * cache_file; int hres; int file; TYPE_1__ IUnknown_iface; } ;
typedef TYPE_2__ stgmed_buf_t ;
typedef int IInternetProtocolEx ;


 int IInternetProtocolEx_AddRef (int *) ;
 int INVALID_HANDLE_VALUE ;
 int S_OK ;
 int StgMedUnkVtbl ;
 int URLMON_LockModule () ;
 TYPE_2__* heap_alloc (int) ;

__attribute__((used)) static stgmed_buf_t *create_stgmed_buf(IInternetProtocolEx *protocol)
{
    stgmed_buf_t *ret = heap_alloc(sizeof(*ret));

    ret->IUnknown_iface.lpVtbl = &StgMedUnkVtbl;
    ret->ref = 1;
    ret->file = INVALID_HANDLE_VALUE;
    ret->hres = S_OK;
    ret->cache_file = ((void*)0);

    IInternetProtocolEx_AddRef(protocol);
    ret->protocol = protocol;

    URLMON_LockModule();

    return ret;
}
