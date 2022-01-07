
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; int * custom_manager; int * mgrsite; TYPE_1__ IInternetSecurityManagerEx2_iface; } ;
typedef TYPE_2__ SecManagerImpl ;
typedef TYPE_2__* LPVOID ;
typedef int IUnknown ;
typedef int HRESULT ;


 int S_OK ;
 int TRACE (char*,int *,TYPE_2__**) ;
 int URLMON_LockModule () ;
 int VT_SecManagerImpl ;
 TYPE_2__* heap_alloc (int) ;

HRESULT SecManagerImpl_Construct(IUnknown *pUnkOuter, LPVOID *ppobj)
{
    SecManagerImpl *This;

    TRACE("(%p,%p)\n",pUnkOuter,ppobj);
    This = heap_alloc(sizeof(*This));


    This->IInternetSecurityManagerEx2_iface.lpVtbl = &VT_SecManagerImpl;

    This->ref = 1;
    This->mgrsite = ((void*)0);
    This->custom_manager = ((void*)0);

    *ppobj = This;

    URLMON_LockModule();

    return S_OK;
}
