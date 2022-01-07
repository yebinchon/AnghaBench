
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


struct TYPE_14__ {int const* const base; } ;
struct TYPE_12__ {TYPE_3__ window; void* nextToUpdate; int cParams; void* loadedDictEnd; } ;
typedef TYPE_1__ ZSTD_matchState_t ;
typedef int ZSTD_dictTableLoadMethod_e ;
struct TYPE_11__ {int strategy; } ;
struct TYPE_13__ {TYPE_10__ cParams; scalar_t__ forceWindow; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
typedef void* U32 ;
typedef int BYTE ;


 size_t HASH_READ_SIZE ;
 int ZSTD_assertEqualCParams (TYPE_10__,int ) ;





 int ZSTD_fillDoubleHashTable (TYPE_1__*,int const* const,int ) ;
 int ZSTD_fillHashTable (TYPE_1__*,int const* const,int ) ;

 int ZSTD_insertAndFindFirstIndex (TYPE_1__*,int const* const) ;


 int ZSTD_updateTree (TYPE_1__*,int const* const,int const* const) ;
 int ZSTD_window_update (TYPE_3__*,void const*,size_t) ;
 int assert (int ) ;

__attribute__((used)) static size_t ZSTD_loadDictionaryContent(ZSTD_matchState_t* ms,
                                         ZSTD_CCtx_params const* params,
                                         const void* src, size_t srcSize,
                                         ZSTD_dictTableLoadMethod_e dtlm)
{
    const BYTE* const ip = (const BYTE*) src;
    const BYTE* const iend = ip + srcSize;

    ZSTD_window_update(&ms->window, src, srcSize);
    ms->loadedDictEnd = params->forceWindow ? 0 : (U32)(iend - ms->window.base);


    ZSTD_assertEqualCParams(params->cParams, ms->cParams);

    if (srcSize <= HASH_READ_SIZE) return 0;

    switch(params->cParams.strategy)
    {
    case 131:
        ZSTD_fillHashTable(ms, iend, dtlm);
        break;
    case 132:
        ZSTD_fillDoubleHashTable(ms, iend, dtlm);
        break;

    case 130:
    case 129:
    case 128:
        if (srcSize >= HASH_READ_SIZE)
            ZSTD_insertAndFindFirstIndex(ms, iend-HASH_READ_SIZE);
        break;

    case 135:
    case 134:
    case 133:
        if (srcSize >= HASH_READ_SIZE)
            ZSTD_updateTree(ms, iend-HASH_READ_SIZE, iend);
        break;

    default:
        assert(0);
    }

    ms->nextToUpdate = (U32)(iend - ms->window.base);
    return 0;
}
