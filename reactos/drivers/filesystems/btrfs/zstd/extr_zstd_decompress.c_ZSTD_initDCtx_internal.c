
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bmi2; scalar_t__ noForwardProgress; scalar_t__ previousLegacyVersion; int * legacyContext; int streamStage; scalar_t__ outBuffSize; scalar_t__ inBuffSize; int * inBuff; scalar_t__ ddictIsCold; int * dictEnd; int * ddictLocal; int * ddict; int maxWindowSize; scalar_t__ staticSize; int format; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int ZSTD_MAXWINDOWSIZE_DEFAULT ;
 int ZSTD_cpuid () ;
 int ZSTD_cpuid_bmi2 (int ) ;
 int ZSTD_f_zstd1 ;
 int zdss_init ;

__attribute__((used)) static void ZSTD_initDCtx_internal(ZSTD_DCtx* dctx)
{
    dctx->format = ZSTD_f_zstd1;
    dctx->staticSize = 0;
    dctx->maxWindowSize = ZSTD_MAXWINDOWSIZE_DEFAULT;
    dctx->ddict = ((void*)0);
    dctx->ddictLocal = ((void*)0);
    dctx->dictEnd = ((void*)0);
    dctx->ddictIsCold = 0;
    dctx->inBuff = ((void*)0);
    dctx->inBuffSize = 0;
    dctx->outBuffSize = 0;
    dctx->streamStage = zdss_init;
    dctx->legacyContext = ((void*)0);
    dctx->previousLegacyVersion = 0;
    dctx->noForwardProgress = 0;
    dctx->bmi2 = ZSTD_cpuid_bmi2(ZSTD_cpuid());
}
