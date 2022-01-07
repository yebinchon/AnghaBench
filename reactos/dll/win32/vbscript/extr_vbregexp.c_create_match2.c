
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int match_state_t ;
struct TYPE_9__ {int * lpVtbl; } ;
struct TYPE_7__ {int * lpVtbl; } ;
struct TYPE_8__ {int ref; TYPE_3__ IMatch2_iface; TYPE_1__ IMatch_iface; int sub_matches; int index; } ;
typedef TYPE_2__ Match2 ;
typedef TYPE_3__ IMatch2 ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ FAILED (int ) ;
 int Match2Vtbl ;
 int Match2_tid ;
 int MatchVtbl ;
 int create_sub_matches (int ,int *,int *) ;
 TYPE_2__* heap_alloc_zero (int) ;
 int heap_free (TYPE_2__*) ;
 int init_regexp_typeinfo (int ) ;

__attribute__((used)) static HRESULT create_match2(DWORD pos, match_state_t **result, IMatch2 **match)
{
    Match2 *ret;
    HRESULT hres;

    hres = init_regexp_typeinfo(Match2_tid);
    if(FAILED(hres))
        return hres;

    ret = heap_alloc_zero(sizeof(*ret));
    if(!ret)
        return E_OUTOFMEMORY;

    ret->index = pos;
    hres = create_sub_matches(pos, result ? *result : ((void*)0), &ret->sub_matches);
    if(FAILED(hres)) {
        heap_free(ret);
        return hres;
    }
    if(result)
        *result = ((void*)0);

    ret->IMatch2_iface.lpVtbl = &Match2Vtbl;
    ret->IMatch_iface.lpVtbl = &MatchVtbl;

    ret->ref = 1;
    *match = &ret->IMatch2_iface;
    return hres;
}
