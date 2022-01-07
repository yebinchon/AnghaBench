
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_dictTableLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef int ZSTD_CDict ;
struct TYPE_6__ {int windowLog; } ;
struct TYPE_5__ {TYPE_4__ cParams; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;
typedef int ZSTD_CCtx ;


 int CHECK_F (int ) ;
 int DEBUGLOG (int,char*,int ) ;
 int ZSTD_checkCParams (TYPE_4__) ;
 size_t ZSTD_compressBegin_internal (int *,void const*,size_t,int ,int ,int const*,TYPE_1__,unsigned long long,int ) ;
 int ZSTDb_not_buffered ;

size_t ZSTD_compressBegin_advanced_internal(ZSTD_CCtx* cctx,
                                    const void* dict, size_t dictSize,
                                    ZSTD_dictContentType_e dictContentType,
                                    ZSTD_dictTableLoadMethod_e dtlm,
                                    const ZSTD_CDict* cdict,
                                    ZSTD_CCtx_params params,
                                    unsigned long long pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_compressBegin_advanced_internal: wlog=%u", params.cParams.windowLog);

    CHECK_F( ZSTD_checkCParams(params.cParams) );
    return ZSTD_compressBegin_internal(cctx,
                                       dict, dictSize, dictContentType, dtlm,
                                       cdict,
                                       params, pledgedSrcSize,
                                       ZSTDb_not_buffered);
}
