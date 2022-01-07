
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_DStreamParameter_e ;
struct TYPE_3__ {scalar_t__ streamStage; unsigned int maxWindowSize; } ;
typedef TYPE_1__ ZSTD_DStream ;
typedef unsigned int U32 ;


 int DEBUGLOG (int,char*,unsigned int) ;

 size_t ERROR (int ) ;
 int parameter_unsupported ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_setDStreamParameter(ZSTD_DStream* dctx,
                                ZSTD_DStreamParameter_e paramType, unsigned paramValue)
{
    if (dctx->streamStage != zdss_init) return ERROR(stage_wrong);
    switch(paramType)
    {
        default : return ERROR(parameter_unsupported);
        case 128 :
            DEBUGLOG(4, "setting maxWindowSize = %u KB", paramValue >> 10);
            dctx->maxWindowSize = paramValue ? paramValue : (U32)(-1);
            break;
    }
    return 0;
}
