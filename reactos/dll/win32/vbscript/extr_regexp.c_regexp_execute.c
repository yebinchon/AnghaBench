
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int parenCount; } ;
typedef TYPE_1__ regexp_t ;
struct TYPE_12__ {int match_len; int paren_count; int const* cp; } ;
typedef TYPE_2__ match_state_t ;
typedef int heap_pool_t ;
typedef int const WCHAR ;
struct TYPE_13__ {int start; int skipped; int ok; int * pool; int const* cpend; int const* cpbegin; } ;
typedef TYPE_3__ REGlobalData ;
typedef int HRESULT ;
typedef int DWORD ;


 int E_FAIL ;
 scalar_t__ FAILED (int ) ;
 int InitMatch (TYPE_1__*,void*,int *,TYPE_3__*) ;
 TYPE_2__* MatchRegExp (TYPE_3__*,TYPE_2__*) ;
 int S_FALSE ;
 int S_OK ;
 int WARN (char*) ;
 int assert (int ) ;
 int heap_pool_clear (int *) ;
 int * heap_pool_mark (int *) ;

HRESULT regexp_execute(regexp_t *regexp, void *cx, heap_pool_t *pool,
        const WCHAR *str, DWORD str_len, match_state_t *result)
{
    match_state_t *res;
    REGlobalData gData;
    heap_pool_t *mark = heap_pool_mark(pool);
    const WCHAR *str_beg = result->cp;
    HRESULT hres;

    assert(result->cp != ((void*)0));

    gData.cpbegin = str;
    gData.cpend = str+str_len;
    gData.start = result->cp-str;
    gData.skipped = 0;
    gData.pool = pool;

    hres = InitMatch(regexp, cx, pool, &gData);
    if(FAILED(hres)) {
        WARN("InitMatch failed\n");
        heap_pool_clear(mark);
        return hres;
    }

    res = MatchRegExp(&gData, result);
    heap_pool_clear(mark);
    if(!gData.ok) {
        WARN("MatchRegExp failed\n");
        return E_FAIL;
    }

    if(!res) {
        result->match_len = 0;
        return S_FALSE;
    }

    result->match_len = (result->cp-str_beg) - gData.skipped;
    result->paren_count = regexp->parenCount;
    return S_OK;
}
