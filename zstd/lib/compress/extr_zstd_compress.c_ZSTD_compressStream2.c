
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_6__ ;
typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_24__ {int dictContentType; int dictSize; int * dict; } ;
typedef TYPE_2__ ZSTD_prefixDict ;
struct TYPE_25__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_3__ ZSTD_outBuffer ;
struct TYPE_26__ {scalar_t__ pos; scalar_t__ size; } ;
typedef TYPE_4__ ZSTD_inBuffer ;
typedef scalar_t__ ZSTD_EndDirective ;
struct TYPE_27__ {scalar_t__ nbWorkers; int cParams; } ;
typedef TYPE_5__ ZSTD_CCtx_params ;
struct TYPE_23__ {scalar_t__ nbWorkers; } ;
struct TYPE_28__ {scalar_t__ streamStage; scalar_t__ pledgedSrcSizePlusOne; size_t outBuffContentSize; size_t outBuffFlushedSize; int * mtctx; scalar_t__ cParamsChanged; TYPE_5__ requestedParams; TYPE_1__ appliedParams; int * cdict; int customMem; TYPE_2__ prefixDict; } ;
typedef TYPE_6__ ZSTD_CCtx ;
typedef int U32 ;


 int DEBUGLOG (int,char*,...) ;
 int FORWARD_IF_ERROR (size_t) ;
 int GENERIC ;
 int RETURN_ERROR_IF (int,int ) ;
 scalar_t__ ZSTDMT_JOBSIZE_MIN ;
 size_t ZSTDMT_compressStream_generic (int *,TYPE_3__*,TYPE_4__*,scalar_t__) ;
 int * ZSTDMT_createCCtx_advanced (int ,int ) ;
 size_t ZSTDMT_initCStream_internal (int *,int *,int ,int ,int *,TYPE_5__,scalar_t__) ;
 int ZSTDMT_updateCParams_whileCompressing (int *,TYPE_5__*) ;
 int ZSTD_CCtx_reset (TYPE_6__*,int ) ;
 size_t ZSTD_compressStream_generic (TYPE_6__*,TYPE_3__*,TYPE_4__*,scalar_t__) ;
 int ZSTD_dct_rawContent ;
 scalar_t__ ZSTD_e_continue ;
 scalar_t__ ZSTD_e_end ;
 scalar_t__ ZSTD_e_flush ;
 int ZSTD_getCParamsFromCCtxParams (TYPE_5__*,scalar_t__,int ) ;
 size_t ZSTD_initLocalDict (TYPE_6__*) ;
 scalar_t__ ZSTD_isError (size_t) ;
 size_t ZSTD_resetCStream_internal (TYPE_6__*,int *,int ,int ,int *,TYPE_5__,scalar_t__) ;
 int ZSTD_reset_session_only ;
 int assert (int) ;
 int memory_allocation ;
 int memset (TYPE_2__*,int ,int) ;
 scalar_t__ zcss_init ;
 scalar_t__ zcss_load ;

size_t ZSTD_compressStream2( ZSTD_CCtx* cctx,
                             ZSTD_outBuffer* output,
                             ZSTD_inBuffer* input,
                             ZSTD_EndDirective endOp)
{
    DEBUGLOG(5, "ZSTD_compressStream2, endOp=%u ", (unsigned)endOp);

    RETURN_ERROR_IF(output->pos > output->size, GENERIC);
    RETURN_ERROR_IF(input->pos > input->size, GENERIC);
    assert(cctx!=((void*)0));


    if (cctx->streamStage == zcss_init) {
        ZSTD_CCtx_params params = cctx->requestedParams;
        ZSTD_prefixDict const prefixDict = cctx->prefixDict;
        FORWARD_IF_ERROR( ZSTD_initLocalDict(cctx) );
        memset(&cctx->prefixDict, 0, sizeof(cctx->prefixDict));
        assert(prefixDict.dict==((void*)0) || cctx->cdict==((void*)0));
        DEBUGLOG(4, "ZSTD_compressStream2 : transparent init stage");
        if (endOp == ZSTD_e_end) cctx->pledgedSrcSizePlusOne = input->size + 1;
        params.cParams = ZSTD_getCParamsFromCCtxParams(
                &cctx->requestedParams, cctx->pledgedSrcSizePlusOne-1, 0 );
        { FORWARD_IF_ERROR( ZSTD_resetCStream_internal(cctx,
                            prefixDict.dict, prefixDict.dictSize, prefixDict.dictContentType,
                            cctx->cdict,
                            params, cctx->pledgedSrcSizePlusOne-1) );
            assert(cctx->streamStage == zcss_load);
            assert(cctx->appliedParams.nbWorkers == 0);
    } }
    FORWARD_IF_ERROR( ZSTD_compressStream_generic(cctx, output, input, endOp) );
    DEBUGLOG(5, "completed ZSTD_compressStream2");
    return cctx->outBuffContentSize - cctx->outBuffFlushedSize;
}
