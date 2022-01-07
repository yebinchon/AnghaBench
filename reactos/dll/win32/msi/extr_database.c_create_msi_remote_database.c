
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ IWineMsiRemoteDatabase_iface; scalar_t__ database; } ;
typedef TYPE_1__ msi_remote_database_impl ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 TYPE_1__* msi_alloc (int) ;
 int msi_remote_database_vtbl ;

HRESULT create_msi_remote_database( IUnknown *pOuter, LPVOID *ppObj )
{
    msi_remote_database_impl *This;

    This = msi_alloc( sizeof *This );
    if (!This)
        return E_OUTOFMEMORY;

    This->IWineMsiRemoteDatabase_iface.lpVtbl = &msi_remote_database_vtbl;
    This->database = 0;
    This->refs = 1;

    *ppObj = &This->IWineMsiRemoteDatabase_iface;

    return S_OK;
}
