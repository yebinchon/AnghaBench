
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTDv04_Dctx ;


 size_t ZSTD_resetDCtx (int *) ;

size_t ZSTDv04_resetDCtx(ZSTDv04_Dctx* dctx) { return ZSTD_resetDCtx(dctx); }
