
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IWshEnvironment_iface; int classinfo; } ;
typedef TYPE_1__ WshEnvironment ;
typedef TYPE_2__ IWshEnvironment ;
typedef int IUnknown ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IID_IWshEnvironment ;
 int S_OK ;
 int WshEnvironmentVtbl ;
 TYPE_1__* heap_alloc (int) ;
 int init_classinfo (int *,int *,int *) ;

__attribute__((used)) static HRESULT WshEnvironment_Create(IWshEnvironment **env)
{
    WshEnvironment *This;

    This = heap_alloc(sizeof(*This));
    if (!This) return E_OUTOFMEMORY;

    This->IWshEnvironment_iface.lpVtbl = &WshEnvironmentVtbl;
    This->ref = 1;

    init_classinfo(&IID_IWshEnvironment, (IUnknown *)&This->IWshEnvironment_iface, &This->classinfo);
    *env = &This->IWshEnvironment_iface;

    return S_OK;
}
