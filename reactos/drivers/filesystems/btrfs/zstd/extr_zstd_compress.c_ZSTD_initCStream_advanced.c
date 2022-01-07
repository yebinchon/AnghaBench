
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ contentSizeFlag; } ;
struct TYPE_9__ {TYPE_1__ fParams; int cParams; } ;
typedef TYPE_2__ ZSTD_parameters ;
struct TYPE_10__ {int requestedParams; } ;
typedef TYPE_3__ ZSTD_CStream ;
typedef int U32 ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,int ,scalar_t__) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_assignParamsToCCtxParams (int ,TYPE_2__) ;
 int ZSTD_checkCParams (int ) ;
 size_t ZSTD_initCStream_internal (TYPE_3__*,void const*,size_t,int *,int ,unsigned long long) ;

size_t ZSTD_initCStream_advanced(ZSTD_CStream* zcs,
                                 const void* dict, size_t dictSize,
                                 ZSTD_parameters params, unsigned long long pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_initCStream_advanced: pledgedSrcSize=%u, flag=%u",
                (U32)pledgedSrcSize, params.fParams.contentSizeFlag);
    CHECK_F( ZSTD_checkCParams(params.cParams) );
    if ((pledgedSrcSize==0) && (params.fParams.contentSizeFlag==0)) pledgedSrcSize = ZSTD_CONTENTSIZE_UNKNOWN;
    zcs->requestedParams = ZSTD_assignParamsToCCtxParams(zcs->requestedParams, params);
    return ZSTD_initCStream_internal(zcs, dict, dictSize, ((void*)0) , zcs->requestedParams, pledgedSrcSize);
}
