
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int contentSizeFlag; } ;
struct TYPE_9__ {TYPE_1__ fParams; } ;
struct TYPE_8__ {int cdict; TYPE_3__ requestedParams; } ;
typedef TYPE_2__ ZSTD_CStream ;
typedef TYPE_3__ ZSTD_CCtx_params ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int ) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_dct_auto ;
 size_t ZSTD_resetCStream_internal (TYPE_2__*,int *,int ,int ,int ,TYPE_3__,unsigned long long) ;

size_t ZSTD_resetCStream(ZSTD_CStream* zcs, unsigned long long pledgedSrcSize)
{
    ZSTD_CCtx_params params = zcs->requestedParams;
    DEBUGLOG(4, "ZSTD_resetCStream: pledgedSrcSize = %u", (U32)pledgedSrcSize);
    if (pledgedSrcSize==0) pledgedSrcSize = ZSTD_CONTENTSIZE_UNKNOWN;
    params.fParams.contentSizeFlag = 1;
    return ZSTD_resetCStream_internal(zcs, ((void*)0), 0, ZSTD_dct_auto, zcs->cdict, params, pledgedSrcSize);
}
