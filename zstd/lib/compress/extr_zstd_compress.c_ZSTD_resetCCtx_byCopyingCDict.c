
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {unsigned int windowLog; scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_17__ {int hashLog3; int loadedDictEnd; int nextToUpdate; int window; int hashTable3; int * chainTable; int * hashTable; TYPE_5__ cParams; } ;
typedef TYPE_4__ ZSTD_matchState_t ;
typedef TYPE_5__ ZSTD_compressionParameters ;
typedef int ZSTD_buffered_policy_e ;
struct TYPE_19__ {int cBlockState; int dictID; TYPE_4__ matchState; } ;
typedef TYPE_6__ ZSTD_CDict ;
struct TYPE_20__ {TYPE_5__ cParams; } ;
typedef TYPE_7__ ZSTD_CCtx_params ;
struct TYPE_16__ {int * prevCBlock; TYPE_4__ matchState; } ;
struct TYPE_14__ {scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_15__ {TYPE_1__ cParams; } ;
struct TYPE_21__ {TYPE_3__ blockState; int dictID; int workspace; TYPE_2__ appliedParams; } ;
typedef TYPE_8__ ZSTD_CCtx ;
typedef int U64 ;
typedef int U32 ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_cwksp_mark_tables_clean (int *) ;
 int ZSTD_cwksp_mark_tables_dirty (int *) ;
 scalar_t__ ZSTD_fast ;
 int ZSTD_resetCCtx_internal (TYPE_8__*,TYPE_7__,int ,int ,int ) ;
 int ZSTDcrp_leaveDirty ;
 int assert (int) ;
 int memcpy (int *,int *,size_t const) ;
 int memset (int ,int ,size_t const) ;

__attribute__((used)) static size_t ZSTD_resetCCtx_byCopyingCDict(ZSTD_CCtx* cctx,
                            const ZSTD_CDict* cdict,
                            ZSTD_CCtx_params params,
                            U64 pledgedSrcSize,
                            ZSTD_buffered_policy_e zbuff)
{
    const ZSTD_compressionParameters *cdict_cParams = &cdict->matchState.cParams;

    DEBUGLOG(4, "copying dictionary into context");

    { unsigned const windowLog = params.cParams.windowLog;
        assert(windowLog != 0);

        params.cParams = *cdict_cParams;
        params.cParams.windowLog = windowLog;
        FORWARD_IF_ERROR(ZSTD_resetCCtx_internal(cctx, params, pledgedSrcSize,
                                                 ZSTDcrp_leaveDirty, zbuff));
        assert(cctx->appliedParams.cParams.strategy == cdict_cParams->strategy);
        assert(cctx->appliedParams.cParams.hashLog == cdict_cParams->hashLog);
        assert(cctx->appliedParams.cParams.chainLog == cdict_cParams->chainLog);
    }

    ZSTD_cwksp_mark_tables_dirty(&cctx->workspace);


    { size_t const chainSize = (cdict_cParams->strategy == ZSTD_fast) ? 0 : ((size_t)1 << cdict_cParams->chainLog);
        size_t const hSize = (size_t)1 << cdict_cParams->hashLog;

        memcpy(cctx->blockState.matchState.hashTable,
               cdict->matchState.hashTable,
               hSize * sizeof(U32));
        memcpy(cctx->blockState.matchState.chainTable,
               cdict->matchState.chainTable,
               chainSize * sizeof(U32));
    }


    { int const h3log = cctx->blockState.matchState.hashLog3;
        size_t const h3Size = h3log ? ((size_t)1 << h3log) : 0;
        assert(cdict->matchState.hashLog3 == 0);
        memset(cctx->blockState.matchState.hashTable3, 0, h3Size * sizeof(U32));
    }

    ZSTD_cwksp_mark_tables_clean(&cctx->workspace);


    { ZSTD_matchState_t const* srcMatchState = &cdict->matchState;
        ZSTD_matchState_t* dstMatchState = &cctx->blockState.matchState;
        dstMatchState->window = srcMatchState->window;
        dstMatchState->nextToUpdate = srcMatchState->nextToUpdate;
        dstMatchState->loadedDictEnd= srcMatchState->loadedDictEnd;
    }

    cctx->dictID = cdict->dictID;


    memcpy(cctx->blockState.prevCBlock, &cdict->cBlockState, sizeof(cdict->cBlockState));

    return 0;
}
