
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int count; int ** matches; } ;
typedef TYPE_1__ MatchCollection2 ;
typedef int IMatchCollection2 ;
typedef int IMatch2 ;
typedef int IMatch ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int IMatch2_AddRef (int *) ;
 int S_OK ;
 int TRACE (char*,TYPE_1__*,int *) ;
 int ** heap_alloc (int) ;
 int ** heap_realloc (int **,int) ;
 TYPE_1__* impl_from_IMatchCollection2 (int *) ;

__attribute__((used)) static HRESULT add_match(IMatchCollection2 *iface, IMatch2 *add)
{
    MatchCollection2 *This = impl_from_IMatchCollection2(iface);

    TRACE("(%p)->(%p)\n", This, add);

    if(!This->size) {
        This->matches = heap_alloc(8*sizeof(IMatch*));
        if(!This->matches)
            return E_OUTOFMEMORY;
        This->size = 8;
    }else if(This->size == This->count) {
        IMatch2 **new_matches = heap_realloc(This->matches, 2*This->size*sizeof(IMatch*));
        if(!new_matches)
            return E_OUTOFMEMORY;

        This->matches = new_matches;
        This->size <<= 1;
    }

    This->matches[This->count++] = add;
    IMatch2_AddRef(add);
    return S_OK;
}
