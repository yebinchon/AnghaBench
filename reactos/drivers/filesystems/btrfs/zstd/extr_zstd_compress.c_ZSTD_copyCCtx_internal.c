
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {size_t hashLog3; int loadedDictEnd; int nextToUpdate3; int nextToUpdate; int window; int * hashTable; scalar_t__ chainTable; scalar_t__ hashTable3; } ;
typedef TYPE_4__ ZSTD_matchState_t ;
typedef int ZSTD_frameParameters ;
typedef int ZSTD_customMem ;
typedef int ZSTD_buffered_policy_e ;
struct TYPE_11__ {scalar_t__ windowLog; scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_15__ {int fParams; TYPE_1__ cParams; } ;
typedef TYPE_5__ ZSTD_CCtx_params ;
struct TYPE_13__ {int * prevCBlock; TYPE_4__ matchState; } ;
struct TYPE_12__ {TYPE_1__ cParams; } ;
struct TYPE_16__ {scalar_t__ stage; TYPE_3__ blockState; int dictID; TYPE_2__ appliedParams; TYPE_5__ requestedParams; int customMem; } ;
typedef TYPE_6__ ZSTD_CCtx ;
typedef int U64 ;
typedef int U32 ;


 int DEBUGLOG (int,char*) ;
 size_t ERROR (int ) ;
 scalar_t__ ZSTD_fast ;
 int ZSTD_resetCCtx_internal (TYPE_6__*,TYPE_5__,int ,int ,int ) ;
 int ZSTDcrp_noMemset ;
 scalar_t__ ZSTDcs_init ;
 int assert (int) ;
 int memcpy (int *,int *,size_t const) ;
 int stage_wrong ;

__attribute__((used)) static size_t ZSTD_copyCCtx_internal(ZSTD_CCtx* dstCCtx,
                            const ZSTD_CCtx* srcCCtx,
                            ZSTD_frameParameters fParams,
                            U64 pledgedSrcSize,
                            ZSTD_buffered_policy_e zbuff)
{
    DEBUGLOG(5, "ZSTD_copyCCtx_internal");
    if (srcCCtx->stage!=ZSTDcs_init) return ERROR(stage_wrong);

    memcpy(&dstCCtx->customMem, &srcCCtx->customMem, sizeof(ZSTD_customMem));
    { ZSTD_CCtx_params params = dstCCtx->requestedParams;

        params.cParams = srcCCtx->appliedParams.cParams;
        params.fParams = fParams;
        ZSTD_resetCCtx_internal(dstCCtx, params, pledgedSrcSize,
                                ZSTDcrp_noMemset, zbuff);
        assert(dstCCtx->appliedParams.cParams.windowLog == srcCCtx->appliedParams.cParams.windowLog);
        assert(dstCCtx->appliedParams.cParams.strategy == srcCCtx->appliedParams.cParams.strategy);
        assert(dstCCtx->appliedParams.cParams.hashLog == srcCCtx->appliedParams.cParams.hashLog);
        assert(dstCCtx->appliedParams.cParams.chainLog == srcCCtx->appliedParams.cParams.chainLog);
        assert(dstCCtx->blockState.matchState.hashLog3 == srcCCtx->blockState.matchState.hashLog3);
    }


    { size_t const chainSize = (srcCCtx->appliedParams.cParams.strategy == ZSTD_fast) ? 0 : ((size_t)1 << srcCCtx->appliedParams.cParams.chainLog);
        size_t const hSize = (size_t)1 << srcCCtx->appliedParams.cParams.hashLog;
        size_t const h3Size = (size_t)1 << srcCCtx->blockState.matchState.hashLog3;
        size_t const tableSpace = (chainSize + hSize + h3Size) * sizeof(U32);
        assert((U32*)dstCCtx->blockState.matchState.chainTable == (U32*)dstCCtx->blockState.matchState.hashTable + hSize);
        assert((U32*)dstCCtx->blockState.matchState.hashTable3 == (U32*)dstCCtx->blockState.matchState.chainTable + chainSize);
        memcpy(dstCCtx->blockState.matchState.hashTable, srcCCtx->blockState.matchState.hashTable, tableSpace);
    }


    {
        const ZSTD_matchState_t* srcMatchState = &srcCCtx->blockState.matchState;
        ZSTD_matchState_t* dstMatchState = &dstCCtx->blockState.matchState;
        dstMatchState->window = srcMatchState->window;
        dstMatchState->nextToUpdate = srcMatchState->nextToUpdate;
        dstMatchState->nextToUpdate3= srcMatchState->nextToUpdate3;
        dstMatchState->loadedDictEnd= srcMatchState->loadedDictEnd;
    }
    dstCCtx->dictID = srcCCtx->dictID;


    memcpy(dstCCtx->blockState.prevCBlock, srcCCtx->blockState.prevCBlock, sizeof(*srcCCtx->blockState.prevCBlock));

    return 0;
}
