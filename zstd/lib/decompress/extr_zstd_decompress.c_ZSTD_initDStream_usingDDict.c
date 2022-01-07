
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int format; } ;
typedef TYPE_1__ ZSTD_DStream ;
typedef int ZSTD_DDict ;


 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_DCtx_refDDict (TYPE_1__*,int const*) ;
 int ZSTD_DCtx_reset (TYPE_1__*,int ) ;
 int ZSTD_reset_session_only ;
 size_t ZSTD_startingInputLength (int ) ;

size_t ZSTD_initDStream_usingDDict(ZSTD_DStream* dctx, const ZSTD_DDict* ddict)
{
    FORWARD_IF_ERROR( ZSTD_DCtx_reset(dctx, ZSTD_reset_session_only) );
    FORWARD_IF_ERROR( ZSTD_DCtx_refDDict(dctx, ddict) );
    return ZSTD_startingInputLength(dctx->format);
}
