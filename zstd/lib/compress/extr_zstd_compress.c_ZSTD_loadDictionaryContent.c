
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


struct TYPE_16__ {int const* const base; } ;
struct TYPE_14__ {TYPE_3__ window; void* nextToUpdate; int cParams; void* loadedDictEnd; } ;
typedef TYPE_1__ ZSTD_matchState_t ;
typedef int ZSTD_dictTableLoadMethod_e ;
typedef int ZSTD_cwksp ;
struct TYPE_13__ {int strategy; } ;
struct TYPE_15__ {TYPE_12__ cParams; scalar_t__ forceWindow; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
typedef void* U32 ;
typedef int BYTE ;


 size_t HASH_READ_SIZE ;
 size_t MIN (size_t const,int ) ;
 int ZSTD_CHUNKSIZE_MAX ;
 int ZSTD_assertEqualCParams (TYPE_12__,int ) ;






 int ZSTD_fillDoubleHashTable (TYPE_1__*,int const* const,int ) ;
 int ZSTD_fillHashTable (TYPE_1__*,int const* const,int ) ;

 int ZSTD_insertAndFindFirstIndex (TYPE_1__*,int const* const) ;


 int ZSTD_overflowCorrectIfNeeded (TYPE_1__*,int *,TYPE_2__ const*,int const*,int const* const) ;
 int ZSTD_updateTree (TYPE_1__*,int const* const,int const* const) ;
 int ZSTD_window_update (TYPE_3__*,void const*,size_t) ;
 int assert (int ) ;

__attribute__((used)) static size_t ZSTD_loadDictionaryContent(ZSTD_matchState_t* ms,
                                         ZSTD_cwksp* ws,
                                         ZSTD_CCtx_params const* params,
                                         const void* src, size_t srcSize,
                                         ZSTD_dictTableLoadMethod_e dtlm)
{
    const BYTE* ip = (const BYTE*) src;
    const BYTE* const iend = ip + srcSize;

    ZSTD_window_update(&ms->window, src, srcSize);
    ms->loadedDictEnd = params->forceWindow ? 0 : (U32)(iend - ms->window.base);


    ZSTD_assertEqualCParams(params->cParams, ms->cParams);

    if (srcSize <= HASH_READ_SIZE) return 0;

    while (iend - ip > HASH_READ_SIZE) {
        size_t const remaining = (size_t)(iend - ip);
        size_t const chunk = MIN(remaining, ZSTD_CHUNKSIZE_MAX);
        const BYTE* const ichunk = ip + chunk;

        ZSTD_overflowCorrectIfNeeded(ms, ws, params, ip, ichunk);

        switch(params->cParams.strategy)
        {
        case 131:
            ZSTD_fillHashTable(ms, ichunk, dtlm);
            break;
        case 132:
            ZSTD_fillDoubleHashTable(ms, ichunk, dtlm);
            break;

        case 130:
        case 129:
        case 128:
            if (chunk >= HASH_READ_SIZE)
                ZSTD_insertAndFindFirstIndex(ms, ichunk-HASH_READ_SIZE);
            break;

        case 136:
        case 135:
        case 134:
        case 133:
            if (chunk >= HASH_READ_SIZE)
                ZSTD_updateTree(ms, ichunk-HASH_READ_SIZE, ichunk);
            break;

        default:
            assert(0);
        }

        ip = ichunk;
    }

    ms->nextToUpdate = (U32)(iend - ms->window.base);
    return 0;
}
