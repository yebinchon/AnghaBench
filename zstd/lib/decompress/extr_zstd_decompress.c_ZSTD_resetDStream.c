
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int format; } ;
typedef TYPE_1__ ZSTD_DStream ;


 int FORWARD_IF_ERROR (int ) ;
 int ZSTD_DCtx_reset (TYPE_1__*,int ) ;
 int ZSTD_reset_session_only ;
 size_t ZSTD_startingInputLength (int ) ;

size_t ZSTD_resetDStream(ZSTD_DStream* dctx)
{
    FORWARD_IF_ERROR(ZSTD_DCtx_reset(dctx, ZSTD_reset_session_only));
    return ZSTD_startingInputLength(dctx->format);
}
