#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  dictContentType; int /*<<< orphan*/  dictSize; int /*<<< orphan*/ * dict; } ;
typedef  TYPE_2__ ZSTD_prefixDict ;
struct TYPE_24__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_3__ ZSTD_outBuffer ;
struct TYPE_25__ {scalar_t__ pos; scalar_t__ size; } ;
typedef  TYPE_4__ ZSTD_inBuffer ;
typedef  scalar_t__ ZSTD_EndDirective ;
struct TYPE_26__ {scalar_t__ nbWorkers; int /*<<< orphan*/  cParams; } ;
typedef  TYPE_5__ ZSTD_CCtx_params ;
struct TYPE_22__ {scalar_t__ nbWorkers; } ;
struct TYPE_27__ {scalar_t__ streamStage; scalar_t__ pledgedSrcSizePlusOne; size_t outBuffContentSize; size_t outBuffFlushedSize; int /*<<< orphan*/ * mtctx; scalar_t__ cParamsChanged; TYPE_5__ requestedParams; TYPE_1__ appliedParams; int /*<<< orphan*/ * cdict; int /*<<< orphan*/  customMem; TYPE_2__ prefixDict; } ;
typedef  TYPE_6__ ZSTD_CCtx ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 scalar_t__ ZSTDMT_JOBSIZE_MIN ; 
 size_t FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*,TYPE_3__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  ZSTD_dct_rawContent ; 
 scalar_t__ ZSTD_e_end ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (size_t const) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_6__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ zcss_init ; 
 scalar_t__ zcss_load ; 

size_t FUNC14 (ZSTD_CCtx* cctx,
                              ZSTD_outBuffer* output,
                              ZSTD_inBuffer* input,
                              ZSTD_EndDirective endOp)
{
    FUNC1(5, "ZSTD_compress_generic, endOp=%u ", (U32)endOp);
    /* check conditions */
    if (output->pos > output->size) return FUNC2(GENERIC);
    if (input->pos  > input->size)  return FUNC2(GENERIC);
    FUNC12(cctx!=NULL);

    /* transparent initialization stage */
    if (cctx->streamStage == zcss_init) {
        ZSTD_CCtx_params params = cctx->requestedParams;
        ZSTD_prefixDict const prefixDict = cctx->prefixDict;
        FUNC13(&cctx->prefixDict, 0, sizeof(cctx->prefixDict));  /* single usage */
        FUNC12(prefixDict.dict==NULL || cctx->cdict==NULL);   /* only one can be set */
        FUNC1(4, "ZSTD_compress_generic : transparent init stage");
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
                DEBUGLOG(4, "ZSTD_compress_generic: creating new mtctx for nbWorkers=%u",
                            params.nbWorkers);
                cctx->mtctx = ZSTDMT_createCCtx_advanced(params.nbWorkers, cctx->customMem);
                if (cctx->mtctx == NULL) return ERROR(memory_allocation);
            }
            /* mt compression */
            DEBUGLOG(4, "call ZSTDMT_initCStream_internal as nbWorkers=%u", params.nbWorkers);
            CHECK_F( ZSTDMT_initCStream_internal(
                        cctx->mtctx,
                        prefixDict.dict, prefixDict.dictSize, ZSTD_dct_rawContent,
                        cctx->cdict, params, cctx->pledgedSrcSizePlusOne-1) );
            cctx->streamStage = zcss_load;
            cctx->appliedParams.nbWorkers = params.nbWorkers;
        } else
#endif
        {   FUNC0( FUNC11(cctx,
                            prefixDict.dict, prefixDict.dictSize, prefixDict.dictContentType,
                            cctx->cdict,
                            params, cctx->pledgedSrcSizePlusOne-1) );
            FUNC12(cctx->streamStage == zcss_load);
            FUNC12(cctx->appliedParams.nbWorkers == 0);
    }   }

    /* compression stage */
#ifdef ZSTD_MULTITHREAD
    if (cctx->appliedParams.nbWorkers > 0) {
        if (cctx->cParamsChanged) {
            ZSTDMT_updateCParams_whileCompressing(cctx->mtctx, &cctx->requestedParams);
            cctx->cParamsChanged = 0;
        }
        {   size_t const flushMin = ZSTDMT_compressStream_generic(cctx->mtctx, output, input, endOp);
            if ( ZSTD_isError(flushMin)
              || (endOp == ZSTD_e_end && flushMin == 0) ) { /* compression completed */
                ZSTD_CCtx_reset(cctx);
            }
            DEBUGLOG(5, "completed ZSTD_compress_generic delegating to ZSTDMT_compressStream_generic");
            return flushMin;
    }   }
#endif
    FUNC0( FUNC8(cctx, output, input, endOp) );
    FUNC1(5, "completed ZSTD_compress_generic");
    return cctx->outBuffContentSize - cctx->outBuffFlushedSize; /* remaining to flush */
}