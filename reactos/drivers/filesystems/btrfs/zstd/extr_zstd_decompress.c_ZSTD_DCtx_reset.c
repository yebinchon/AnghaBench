
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int maxWindowSize; int format; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int ZSTD_MAXWINDOWSIZE_DEFAULT ;
 int ZSTD_f_zstd1 ;
 int ZSTD_initDStream (TYPE_1__*) ;

void ZSTD_DCtx_reset(ZSTD_DCtx* dctx)
{
    (void)ZSTD_initDStream(dctx);
    dctx->format = ZSTD_f_zstd1;
    dctx->maxWindowSize = ZSTD_MAXWINDOWSIZE_DEFAULT;
}
