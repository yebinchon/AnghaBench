#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_6__ ;
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  dictContentType; int /*<<< orphan*/  dictSize; int /*<<< orphan*/ * dict; } ;
typedef  TYPE_2__ ZSTD_prefixDict ;
struct TYPE_25__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_3__ ZSTD_outBuffer ;
struct TYPE_26__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_4__ ZSTD_inBuffer ;
typedef  scalar_t__ ZSTD_EndDirective ;
struct TYPE_27__ {scalar_t__ nbWorkers; int /*<<< orphan*/  cParams; } ;
typedef  TYPE_5__ ZSTD_CCtx_params ;
struct TYPE_23__ {scalar_t__ nbWorkers; } ;
struct TYPE_28__ {scalar_t__ streamStage; scalar_t__ pledgedSrcSizePlusOne; size_t outBuffContentSize; size_t outBuffFlushedSize; int /*<<< orphan*/ * mtctx; scalar_t__ cParamsChanged; TYPE_5__ requestedParams; TYPE_1__ appliedParams; int /*<<< orphan*/ * cdict; int /*<<< orphan*/  customMem; TYPE_2__ prefixDict; } ;
typedef  TYPE_6__ ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ ZSTDMT_JOBSIZE_MIN ; 
 size_t FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 size_t FUNC8 (TYPE_6__*,TYPE_3__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  ZSTD_dct_rawContent ; 
 scalar_t__ ZSTD_e_continue ; 
 scalar_t__ ZSTD_e_end ; 
 scalar_t__ ZSTD_e_flush ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 size_t FUNC10 (TYPE_6__*) ; 
 scalar_t__ FUNC11 (size_t) ; 
 size_t FUNC12 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__,scalar_t__) ; 
 int /*<<< orphan*/  ZSTD_reset_session_only ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ zcss_init ; 
 scalar_t__ zcss_load ; 

size_t FUNC15( ZSTD_CCtx* cctx,
                             ZSTD_outBuffer* output,
                             ZSTD_inBuffer* input,
                             ZSTD_EndDirective endOp)
{
    FUNC0(5, "ZSTD_compressStream2, endOp=%u ", (unsigned)endOp);
    /* check conditions */
    FUNC2(output->pos > output->size, GENERIC);
    FUNC2(input->pos  > input->size, GENERIC);
    FUNC13(cctx!=NULL);

    /* transparent initialization stage */
    if (cctx->streamStage == zcss_init) {
        ZSTD_CCtx_params params = cctx->requestedParams;
        ZSTD_prefixDict const prefixDict = cctx->prefixDict;
        FUNC1( FUNC10(cctx) ); /* Init the local dict if present. */
        FUNC14(&cctx->prefixDict, 0, sizeof(cctx->prefixDict));   /* single usage */
        FUNC13(prefixDict.dict==NULL || cctx->cdict==NULL);    /* only one can be set */
        FUNC0(4, "ZSTD_compressStream2 : transparent init stage");
        if (endOp == ZSTD_e_end) cctx->pledgedSrcSizePlusOne = input->size + 1;  /* auto-fix pledgedSrcSize */
        params.cParams = FUNC9(
                &cctx->requestedParams, cctx->pledgedSrcSizePlusOne-1, 0 /*dictSize*/);


#ifdef ZSTD_MULTITHREAD
        if ((cctx->pledgedSrcSizePlusOne-1) <= ZSTDMT_JOBSIZE_MIN) {
            params.nbWorkers = 0; /* do not invoke multi-threading when src size is too small */
        }
        if (params.nbWorkers > 0) {
            /* mt context creation */
            if (cctx->mtctx == NULL) {
                DEBUGLOG(4, "ZSTD_compressStream2: creating new mtctx for nbWorkers=%u",
                            params.nbWorkers);
                cctx->mtctx = ZSTDMT_createCCtx_advanced((U32)params.nbWorkers, cctx->customMem);
                RETURN_ERROR_IF(cctx->mtctx == NULL, memory_allocation);
            }
            /* mt compression */
            DEBUGLOG(4, "call ZSTDMT_initCStream_internal as nbWorkers=%u", params.nbWorkers);
            FORWARD_IF_ERROR( ZSTDMT_initCStream_internal(
                        cctx->mtctx,
                        prefixDict.dict, prefixDict.dictSize, ZSTD_dct_rawContent,
                        cctx->cdict, params, cctx->pledgedSrcSizePlusOne-1) );
            cctx->streamStage = zcss_load;
            cctx->appliedParams.nbWorkers = params.nbWorkers;
        } else
#endif
        {   FUNC1( FUNC12(cctx,
                            prefixDict.dict, prefixDict.dictSize, prefixDict.dictContentType,
                            cctx->cdict,
                            params, cctx->pledgedSrcSizePlusOne-1) );
            FUNC13(cctx->streamStage == zcss_load);
            FUNC13(cctx->appliedParams.nbWorkers == 0);
    }   }
    /* end of transparent initialization stage */

    /* compression stage */
#ifdef ZSTD_MULTITHREAD
    if (cctx->appliedParams.nbWorkers > 0) {
        int const forceMaxProgress = (endOp == ZSTD_e_flush || endOp == ZSTD_e_end);
        size_t flushMin;
        assert(forceMaxProgress || endOp == ZSTD_e_continue /* Protection for a new flush type */);
        if (cctx->cParamsChanged) {
            ZSTDMT_updateCParams_whileCompressing(cctx->mtctx, &cctx->requestedParams);
            cctx->cParamsChanged = 0;
        }
        do {
            flushMin = ZSTDMT_compressStream_generic(cctx->mtctx, output, input, endOp);
            if ( ZSTD_isError(flushMin)
              || (endOp == ZSTD_e_end && flushMin == 0) ) { /* compression completed */
                ZSTD_CCtx_reset(cctx, ZSTD_reset_session_only);
            }
            FORWARD_IF_ERROR(flushMin);
        } while (forceMaxProgress && flushMin != 0 && output->pos < output->size);
        DEBUGLOG(5, "completed ZSTD_compressStream2 delegating to ZSTDMT_compressStream_generic");
        /* Either we don't require maximum forward progress, we've finished the
         * flush, or we are out of output space.
         */
        assert(!forceMaxProgress || flushMin == 0 || output->pos == output->size);
        return flushMin;
    }
#endif
    FUNC1( FUNC8(cctx, output, input, endOp) );
    FUNC0(5, "completed ZSTD_compressStream2");
    return cctx->outBuffContentSize - cctx->outBuffFlushedSize; /* remaining to flush */
}