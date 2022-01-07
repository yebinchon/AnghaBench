
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv02_Dctx ;
typedef int ZSTD_DCtx ;


 size_t ZSTD_resetDCtx (int *) ;

size_t ZSTDv02_resetDCtx(ZSTDv02_Dctx* dctx)
{
    return ZSTD_resetDCtx((ZSTD_DCtx*)dctx);
}
