
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_DCtx ;


 size_t ZSTD_freeDCtx (int *) ;

size_t ZSTDv04_freeDCtx(ZSTD_DCtx* dctx) { return ZSTD_freeDCtx(dctx); }
