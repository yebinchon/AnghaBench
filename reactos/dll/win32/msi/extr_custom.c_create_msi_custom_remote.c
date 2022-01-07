
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ IWineMsiRemoteCustomAction_iface; } ;
typedef TYPE_1__ msi_custom_remote_impl ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 TYPE_1__* msi_alloc (int) ;
 int msi_custom_remote_vtbl ;

HRESULT create_msi_custom_remote( IUnknown *pOuter, LPVOID *ppObj )
{
    msi_custom_remote_impl* This;

    This = msi_alloc( sizeof *This );
    if (!This)
        return E_OUTOFMEMORY;

    This->IWineMsiRemoteCustomAction_iface.lpVtbl = &msi_custom_remote_vtbl;
    This->refs = 1;

    *ppObj = &This->IWineMsiRemoteCustomAction_iface;

    return S_OK;
}
