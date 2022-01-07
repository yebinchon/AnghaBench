
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int flags; int source_len; int source; } ;
typedef TYPE_1__ regexp_t ;
typedef int heap_pool_t ;
typedef int WORD ;
typedef int HRESULT ;


 int E_FAIL ;
 int FALSE ;
 int REG_FOLD ;
 int S_OK ;
 int regexp_destroy (TYPE_1__*) ;
 TYPE_1__* regexp_new (void*,int *,int ,int ,int,int ) ;

HRESULT regexp_set_flags(regexp_t **regexp, void *cx, heap_pool_t *pool, WORD flags)
{
    if(((*regexp)->flags & REG_FOLD) != (flags & REG_FOLD)) {
        regexp_t *new_regexp = regexp_new(cx, pool, (*regexp)->source,
                (*regexp)->source_len, flags, FALSE);

        if(!new_regexp)
            return E_FAIL;

        regexp_destroy(*regexp);
        *regexp = new_regexp;
    }else {
        (*regexp)->flags = flags;
    }

    return S_OK;
}
