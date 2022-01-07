
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t tid; int id; } ;
typedef TYPE_1__ func_info_t ;
typedef int WORD ;
typedef int VARIANT ;
typedef int UINT ;
struct TYPE_6__ {int outer; } ;
typedef int IUnknown ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef int EXCEPINFO ;
typedef TYPE_2__ DispatchEx ;
typedef int DISPPARAMS ;


 int ERR (char*,int ,...) ;
 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_Invoke (int *,int *,int ,int ,int *,int *,int *,int *) ;
 int IUnknown_QueryInterface (int ,int ,void**) ;
 int IUnknown_Release (int *) ;
 int debugstr_mshtml_guid (int ) ;
 int get_typeinfo (size_t,int **) ;
 int * tid_ids ;

__attribute__((used)) static HRESULT typeinfo_invoke(DispatchEx *This, func_info_t *func, WORD flags, DISPPARAMS *dp, VARIANT *res,
        EXCEPINFO *ei)
{
    ITypeInfo *ti;
    IUnknown *unk;
    UINT argerr=0;
    HRESULT hres;

    hres = get_typeinfo(func->tid, &ti);
    if(FAILED(hres)) {
        ERR("Could not get type info: %08x\n", hres);
        return hres;
    }

    hres = IUnknown_QueryInterface(This->outer, tid_ids[func->tid], (void**)&unk);
    if(FAILED(hres)) {
        ERR("Could not get iface %s: %08x\n", debugstr_mshtml_guid(tid_ids[func->tid]), hres);
        return E_FAIL;
    }

    hres = ITypeInfo_Invoke(ti, unk, func->id, flags, dp, res, ei, &argerr);

    IUnknown_Release(unk);
    return hres;
}
