
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ZSTD_format_e ;
struct TYPE_3__ {scalar_t__ streamStage; scalar_t__ format; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int DEBUGLOG (int,char*,unsigned int) ;
 size_t ERROR (int ) ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_DCtx_setFormat(ZSTD_DCtx* dctx, ZSTD_format_e format)
{
    DEBUGLOG(4, "ZSTD_DCtx_setFormat : %u", (unsigned)format);
    if (dctx->streamStage != zdss_init) return ERROR(stage_wrong);
    dctx->format = format;
    return 0;
}
