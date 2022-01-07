
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum tid_t { ____Placeholder_tid_t } tid_t ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int ERR (char*,int ) ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_AddRef (int *) ;
 int ITypeInfo_Release (int *) ;
 int ITypeLib_GetTypeInfoOfGuid (int *,int ,int **) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 unsigned int LibXml ;
 int S_OK ;
 unsigned int get_libid_from_tid (int) ;
 int get_riid_from_tid (int) ;
 int get_typelib (unsigned int,int **) ;
 int ** typeinfos ;

HRESULT get_typeinfo(enum tid_t tid, ITypeInfo **typeinfo)
{
    unsigned lib = get_libid_from_tid(tid);
    ITypeLib *typelib;
    HRESULT hres;

    if (FAILED(hres = get_typelib(lib, &typelib)))
        return hres;

    if(!typeinfos[tid]) {
        ITypeInfo *ti;

        hres = ITypeLib_GetTypeInfoOfGuid(typelib, get_riid_from_tid(tid), &ti);
        if(FAILED(hres)) {

            if (FAILED(hres = get_typelib(LibXml, &typelib)))
                return hres;
            hres = ITypeLib_GetTypeInfoOfGuid(typelib, get_riid_from_tid(tid), &ti);
            if(FAILED(hres)) {
                ERR("GetTypeInfoOfGuid failed: %08x\n", hres);
                return hres;
            }
        }

        if(InterlockedCompareExchangePointer((void**)(typeinfos+tid), ti, ((void*)0)))
            ITypeInfo_Release(ti);
    }

    *typeinfo = typeinfos[tid];

    ITypeInfo_AddRef(typeinfos[tid]);
    return S_OK;
}
