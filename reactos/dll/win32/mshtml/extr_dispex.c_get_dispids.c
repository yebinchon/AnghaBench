
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int tid_t ;
struct TYPE_8__ {int memid; } ;
struct TYPE_7__ {unsigned int cFuncs; } ;
typedef TYPE_1__ TYPEATTR ;
typedef int ITypeInfo ;
typedef int HRESULT ;
typedef TYPE_2__ FUNCDESC ;
typedef unsigned int DWORD ;
typedef int DISPID ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int ITypeInfo_GetFuncDesc (int *,unsigned int,TYPE_2__**) ;
 int ITypeInfo_GetTypeAttr (int *,TYPE_1__**) ;
 int ITypeInfo_Release (int *) ;
 int ITypeInfo_ReleaseFuncDesc (int *,TYPE_2__*) ;
 int ITypeInfo_ReleaseTypeAttr (int *,TYPE_1__*) ;
 int S_OK ;
 int get_typeinfo (int ,int **) ;
 int * heap_alloc (unsigned int) ;
 int heap_free (int *) ;
 int id_cmp ;
 int qsort (int *,unsigned int,int,int ) ;

HRESULT get_dispids(tid_t tid, DWORD *ret_size, DISPID **ret)
{
    unsigned i, func_cnt;
    FUNCDESC *funcdesc;
    ITypeInfo *ti;
    TYPEATTR *attr;
    DISPID *ids;
    HRESULT hres;

    hres = get_typeinfo(tid, &ti);
    if(FAILED(hres))
        return hres;

    hres = ITypeInfo_GetTypeAttr(ti, &attr);
    if(FAILED(hres)) {
        ITypeInfo_Release(ti);
        return hres;
    }

    func_cnt = attr->cFuncs;
    ITypeInfo_ReleaseTypeAttr(ti, attr);

    ids = heap_alloc(func_cnt*sizeof(DISPID));
    if(!ids) {
        ITypeInfo_Release(ti);
        return E_OUTOFMEMORY;
    }

    for(i=0; i < func_cnt; i++) {
        hres = ITypeInfo_GetFuncDesc(ti, i, &funcdesc);
        if(FAILED(hres))
            break;

        ids[i] = funcdesc->memid;
        ITypeInfo_ReleaseFuncDesc(ti, funcdesc);
    }

    ITypeInfo_Release(ti);
    if(FAILED(hres)) {
        heap_free(ids);
        return hres;
    }

    qsort(ids, func_cnt, sizeof(DISPID), id_cmp);

    *ret_size = func_cnt;
    *ret = ids;
    return S_OK;
}
