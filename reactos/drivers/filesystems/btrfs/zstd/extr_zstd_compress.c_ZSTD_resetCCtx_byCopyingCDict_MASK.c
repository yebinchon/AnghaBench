#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_8__ ;
typedef  struct TYPE_20__   TYPE_7__ ;
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_5__ ;
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {unsigned int windowLog; scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_17__ {size_t hashLog3; int /*<<< orphan*/  loadedDictEnd; int /*<<< orphan*/  nextToUpdate3; int /*<<< orphan*/  nextToUpdate; int /*<<< orphan*/  window; scalar_t__ hashTable3; int /*<<< orphan*/ * hashTable; scalar_t__ chainTable; TYPE_5__ cParams; } ;
typedef  TYPE_4__ ZSTD_matchState_t ;
typedef  TYPE_5__ ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  ZSTD_buffered_policy_e ;
struct TYPE_19__ {int /*<<< orphan*/  cBlockState; int /*<<< orphan*/  dictID; TYPE_4__ matchState; } ;
typedef  TYPE_6__ ZSTD_CDict ;
struct TYPE_20__ {TYPE_5__ cParams; } ;
typedef  TYPE_7__ ZSTD_CCtx_params ;
struct TYPE_16__ {int /*<<< orphan*/ * prevCBlock; TYPE_4__ matchState; } ;
struct TYPE_14__ {scalar_t__ strategy; size_t hashLog; size_t chainLog; } ;
struct TYPE_15__ {TYPE_1__ cParams; } ;
struct TYPE_21__ {TYPE_3__ blockState; int /*<<< orphan*/  dictID; TYPE_2__ appliedParams; } ;
typedef  TYPE_8__ ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U64 ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ ZSTD_fast ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,TYPE_7__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTDcrp_noMemset ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,size_t const) ; 

__attribute__((used)) static size_t FUNC5(ZSTD_CCtx* cctx,
                            const ZSTD_CDict* cdict,
                            ZSTD_CCtx_params params,
                            U64 pledgedSrcSize,
                            ZSTD_buffered_policy_e zbuff)
{
    const ZSTD_compressionParameters *cdict_cParams = &cdict->matchState.cParams;

    FUNC0(4, "copying dictionary into context");

    {   unsigned const windowLog = params.cParams.windowLog;
        FUNC2(windowLog != 0);
        /* Copy only compression parameters related to tables. */
        params.cParams = *cdict_cParams;
        params.cParams.windowLog = windowLog;
        FUNC1(cctx, params, pledgedSrcSize,
                                ZSTDcrp_noMemset, zbuff);
        FUNC2(cctx->appliedParams.cParams.strategy == cdict_cParams->strategy);
        FUNC2(cctx->appliedParams.cParams.hashLog == cdict_cParams->hashLog);
        FUNC2(cctx->appliedParams.cParams.chainLog == cdict_cParams->chainLog);
    }

    /* copy tables */
    {   size_t const chainSize = (cdict_cParams->strategy == ZSTD_fast) ? 0 : ((size_t)1 << cdict_cParams->chainLog);
        size_t const hSize =  (size_t)1 << cdict_cParams->hashLog;
        size_t const tableSpace = (chainSize + hSize) * sizeof(U32);
        FUNC2((U32*)cctx->blockState.matchState.chainTable == (U32*)cctx->blockState.matchState.hashTable + hSize);  /* chainTable must follow hashTable */
        FUNC2((U32*)cctx->blockState.matchState.hashTable3 == (U32*)cctx->blockState.matchState.chainTable + chainSize);
        FUNC2((U32*)cdict->matchState.chainTable == (U32*)cdict->matchState.hashTable + hSize);  /* chainTable must follow hashTable */
        FUNC2((U32*)cdict->matchState.hashTable3 == (U32*)cdict->matchState.chainTable + chainSize);
        FUNC3(cctx->blockState.matchState.hashTable, cdict->matchState.hashTable, tableSpace);   /* presumes all tables follow each other */
    }

    /* Zero the hashTable3, since the cdict never fills it */
    {   size_t const h3Size = (size_t)1 << cctx->blockState.matchState.hashLog3;
        FUNC2(cdict->matchState.hashLog3 == 0);
        FUNC4(cctx->blockState.matchState.hashTable3, 0, h3Size * sizeof(U32));
    }

    /* copy dictionary offsets */
    {   ZSTD_matchState_t const* srcMatchState = &cdict->matchState;
        ZSTD_matchState_t* dstMatchState = &cctx->blockState.matchState;
        dstMatchState->window       = srcMatchState->window;
        dstMatchState->nextToUpdate = srcMatchState->nextToUpdate;
        dstMatchState->nextToUpdate3= srcMatchState->nextToUpdate3;
        dstMatchState->loadedDictEnd= srcMatchState->loadedDictEnd;
    }

    cctx->dictID = cdict->dictID;

    /* copy block state */
    FUNC3(cctx->blockState.prevCBlock, &cdict->cBlockState, sizeof(cdict->cBlockState));

    return 0;
}