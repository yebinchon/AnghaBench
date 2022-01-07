
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int ref; TYPE_2__ IEnumVARIANT_iface; int * mc; int count; int pos; } ;
typedef TYPE_1__ MatchCollectionEnum ;
typedef int IMatchCollection2 ;
typedef TYPE_2__ IEnumVARIANT ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IMatchCollection2_AddRef (int *) ;
 int IMatchCollection2_get_Count (int *,int *) ;
 int MatchCollectionEnum_Vtbl ;
 int S_OK ;
 TYPE_1__* heap_alloc_zero (int) ;

__attribute__((used)) static HRESULT create_enum_variant_mc2(IMatchCollection2 *mc, ULONG pos, IEnumVARIANT **enum_variant)
{
    MatchCollectionEnum *ret;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->IEnumVARIANT_iface.lpVtbl = &MatchCollectionEnum_Vtbl;
    ret->ref = 1;
    ret->pos = pos;
    IMatchCollection2_get_Count(mc, &ret->count);
    ret->mc = mc;
    IMatchCollection2_AddRef(mc);

    *enum_variant = &ret->IEnumVARIANT_iface;
    return S_OK;
}
