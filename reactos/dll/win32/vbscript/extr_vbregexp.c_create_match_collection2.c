
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ IMatchCollection2_iface; TYPE_1__ IMatchCollection_iface; } ;
typedef TYPE_2__ MatchCollection2 ;
typedef TYPE_3__ IMatchCollection2 ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int MatchCollection2Vtbl ;
 int MatchCollection2_tid ;
 int MatchCollectionVtbl ;
 int S_OK ;
 TYPE_2__* heap_alloc_zero (int) ;
 int init_regexp_typeinfo (int ) ;

__attribute__((used)) static HRESULT create_match_collection2(IMatchCollection2 **match_collection)
{
    MatchCollection2 *ret;
    HRESULT hres;

    hres = init_regexp_typeinfo(MatchCollection2_tid);
    if(FAILED(hres))
        return hres;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IMatchCollection2_iface.lpVtbl = &MatchCollection2Vtbl;
    ret->IMatchCollection_iface.lpVtbl = &MatchCollectionVtbl;

    ret->ref = 1;
    *match_collection = &ret->IMatchCollection2_iface;
    return S_OK;
}
