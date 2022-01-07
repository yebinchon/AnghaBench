
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t regexp_tid_t ;
typedef char WCHAR ;
typedef int ITypeLib ;
typedef int ITypeInfo ;
typedef int HRESULT ;


 int ERR (char*,int ,...) ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_Release (int *) ;
 int ITypeLib_GetTypeInfoOfGuid (int ,int ,int **) ;
 int ITypeLib_Release (int *) ;
 scalar_t__ InterlockedCompareExchangePointer (void**,int *,int *) ;
 int LoadTypeLib (char const*,int **) ;
 int S_OK ;
 int debugstr_guid (int ) ;
 int * tid_ids ;
 int * typeinfos ;
 int typelib ;

__attribute__((used)) static HRESULT init_regexp_typeinfo(regexp_tid_t tid)
{
    HRESULT hres;

    if(!typelib) {
        static const WCHAR vbscript_dll3W[] = {'v','b','s','c','r','i','p','t','.','d','l','l','\\','3',0};
        ITypeLib *tl;

        hres = LoadTypeLib(vbscript_dll3W, &tl);
        if(FAILED(hres)) {
            ERR("LoadRegTypeLib failed: %08x\n", hres);
            return hres;
        }

        if(InterlockedCompareExchangePointer((void**)&typelib, tl, ((void*)0)))
            ITypeLib_Release(tl);
    }

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

    return S_OK;
}
