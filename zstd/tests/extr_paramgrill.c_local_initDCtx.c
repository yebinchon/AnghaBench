
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dictBufferSize; int dictBuffer; int dctx; } ;
typedef TYPE_1__ BMK_initDCtxArgs ;


 int ZSTD_DCtx_loadDictionary (int ,int ,int ) ;
 int ZSTD_DCtx_reset (int ,int ) ;
 int ZSTD_reset_session_and_parameters ;

__attribute__((used)) static size_t local_initDCtx(void* payload) {
    const BMK_initDCtxArgs* ag = (const BMK_initDCtxArgs*)payload;
    ZSTD_DCtx_reset(ag->dctx, ZSTD_reset_session_and_parameters);
    ZSTD_DCtx_loadDictionary(ag->dctx, ag->dictBuffer, ag->dictBufferSize);
    return 0;
}
