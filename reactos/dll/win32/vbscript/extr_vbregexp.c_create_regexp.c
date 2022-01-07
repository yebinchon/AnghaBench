
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_1__ IRegExp2_iface; int pool; TYPE_2__ IRegExp_iface; } ;
typedef TYPE_3__ RegExp2 ;
typedef int IDispatch ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int RegExp2Vtbl ;
 int RegExp2_tid ;
 int RegExpVtbl ;
 int S_OK ;
 TYPE_3__* heap_alloc_zero (int) ;
 int heap_pool_init (int *) ;
 int init_regexp_typeinfo (int ) ;

HRESULT create_regexp(IDispatch **ret)
{
    RegExp2 *regexp;
    HRESULT hres;

    hres = init_regexp_typeinfo(RegExp2_tid);
    if(FAILED(hres))
        return hres;

    regexp = heap_alloc_zero(sizeof(*regexp));
    if(!regexp)
        return E_OUTOFMEMORY;

    regexp->IRegExp2_iface.lpVtbl = &RegExp2Vtbl;
    regexp->IRegExp_iface.lpVtbl = &RegExpVtbl;
    regexp->ref = 1;
    heap_pool_init(&regexp->pool);

    *ret = (IDispatch*)&regexp->IRegExp2_iface;
    return S_OK;
}
