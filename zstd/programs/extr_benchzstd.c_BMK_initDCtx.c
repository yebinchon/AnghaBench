
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 int CHECK_Z (int ) ;
 int ZSTD_DCtx_loadDictionary (int *,void const*,size_t) ;
 int ZSTD_DCtx_reset (int *,int ) ;
 int ZSTD_reset_session_and_parameters ;

__attribute__((used)) static void BMK_initDCtx(ZSTD_DCtx* dctx,
    const void* dictBuffer, size_t dictBufferSize) {
    CHECK_Z(ZSTD_DCtx_reset(dctx, ZSTD_reset_session_and_parameters));
    CHECK_Z(ZSTD_DCtx_loadDictionary(dctx, dictBuffer, dictBufferSize));
}
