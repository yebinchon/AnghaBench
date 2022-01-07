
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t tid_t ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int ERR (char*,int ,int ) ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_AddRef (int *) ;
 int ITypeInfo_Release (int *) ;
 int ITypeLib_GetTypeInfoOfGuid (int ,int ,int **) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int S_OK ;
 int debugstr_guid (int ) ;
 int load_typelib () ;
 int * tid_ids ;
 int ** typeinfos ;
 int typelib ;

HRESULT get_typeinfo(tid_t tid, ITypeInfo **typeinfo)
{
    HRESULT hres;

    if (FAILED(hres = load_typelib()))
        return hres;

    if(!typeinfos[tid]) {
        ITypeInfo *ti;

        hres = ITypeLib_GetTypeInfoOfGuid(typelib, tid_ids[tid], &ti);
        if(FAILED(hres)) {
            ERR("GetTypeInfoOfGuid(%s) failed: %08x\n", debugstr_guid(tid_ids[tid]), hres);
            return hres;
        }

        if(InterlockedCompareExchangePointer((void**)(typeinfos+tid), ti, ((void*)0)))
            ITypeInfo_Release(ti);
    }

    *typeinfo = typeinfos[tid];
    ITypeInfo_AddRef(*typeinfo);
    return S_OK;
}
