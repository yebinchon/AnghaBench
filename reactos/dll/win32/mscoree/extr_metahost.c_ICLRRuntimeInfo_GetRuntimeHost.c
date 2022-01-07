
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * lpVtbl; } ;
struct CLRRuntimeInfo {TYPE_1__ ICLRRuntimeInfo_iface; } ;
typedef int RuntimeHost ;
typedef int ICLRRuntimeInfo ;
typedef int HRESULT ;


 int CLRRuntimeInfoVtbl ;
 int CLRRuntimeInfo_GetRuntimeHost (struct CLRRuntimeInfo*,int **) ;
 int assert (int) ;
 struct CLRRuntimeInfo* impl_from_ICLRRuntimeInfo (int *) ;

HRESULT ICLRRuntimeInfo_GetRuntimeHost(ICLRRuntimeInfo *iface, RuntimeHost **result)
{
    struct CLRRuntimeInfo *This = impl_from_ICLRRuntimeInfo(iface);

    assert(This->ICLRRuntimeInfo_iface.lpVtbl == &CLRRuntimeInfoVtbl);

    return CLRRuntimeInfo_GetRuntimeHost(This, result);
}
