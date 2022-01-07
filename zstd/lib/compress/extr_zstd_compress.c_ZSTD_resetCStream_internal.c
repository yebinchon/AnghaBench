
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int ZSTD_dictContentType_e ;
struct TYPE_8__ {int inBuffTarget; int blockSize; scalar_t__ frameEnded; int streamStage; scalar_t__ outBuffFlushedSize; scalar_t__ outBuffContentSize; scalar_t__ inBuffPos; scalar_t__ inToCompress; } ;
typedef TYPE_1__ ZSTD_CStream ;
typedef int ZSTD_CDict ;
struct TYPE_9__ {int cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int DEBUGLOG (int,char*) ;
 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_checkCParams (int ) ;
 int ZSTD_compressBegin_internal (TYPE_1__*,void const* const,size_t const,int const,int ,int const* const,TYPE_2__*,unsigned long long const,int ) ;
 int ZSTD_dtlm_fast ;
 int ZSTD_getCParamsFromCCtxParams (TYPE_2__*,unsigned long long const,size_t const) ;
 int ZSTD_isError (int ) ;
 int ZSTDb_buffered ;
 int assert (int) ;
 int zcss_load ;

__attribute__((used)) static size_t ZSTD_resetCStream_internal(ZSTD_CStream* cctx,
                    const void* const dict, size_t const dictSize, ZSTD_dictContentType_e const dictContentType,
                    const ZSTD_CDict* const cdict,
                    ZSTD_CCtx_params params, unsigned long long const pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_resetCStream_internal");

    params.cParams = ZSTD_getCParamsFromCCtxParams(&params, pledgedSrcSize, dictSize);

    assert(!ZSTD_isError(ZSTD_checkCParams(params.cParams)));
    assert(!((dict) && (cdict)));

    FORWARD_IF_ERROR( ZSTD_compressBegin_internal(cctx,
                                         dict, dictSize, dictContentType, ZSTD_dtlm_fast,
                                         cdict,
                                         &params, pledgedSrcSize,
                                         ZSTDb_buffered) );

    cctx->inToCompress = 0;
    cctx->inBuffPos = 0;
    cctx->inBuffTarget = cctx->blockSize
                      + (cctx->blockSize == pledgedSrcSize);
    cctx->outBuffContentSize = cctx->outBuffFlushedSize = 0;
    cctx->streamStage = zcss_load;
    cctx->frameEnded = 0;
    return 0;
}
