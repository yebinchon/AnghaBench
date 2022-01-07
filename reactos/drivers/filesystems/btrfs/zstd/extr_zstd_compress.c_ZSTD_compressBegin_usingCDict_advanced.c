
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ZSTD_frameParameters ;
typedef int ZSTD_CDict ;
struct TYPE_9__ {int windowLog; } ;
struct TYPE_7__ {int fParams; TYPE_3__ cParams; } ;
typedef TYPE_1__ ZSTD_CCtx_params ;
struct TYPE_8__ {TYPE_1__ requestedParams; } ;
typedef TYPE_2__ ZSTD_CCtx ;
typedef int U32 ;


 int DEBUGLOG (int,char*) ;
 size_t ERROR (int ) ;
 int MAX (int ,int const) ;
 int MIN (unsigned long long const,unsigned int) ;
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_compressBegin_internal (TYPE_2__* const,int *,int ,int ,int ,int const* const,TYPE_1__,unsigned long long const,int ) ;
 int ZSTD_dct_auto ;
 int ZSTD_dtlm_fast ;
 TYPE_3__ ZSTD_getCParamsFromCDict (int const* const) ;
 int ZSTD_highbit32 (int const) ;
 int ZSTDb_not_buffered ;
 int dictionary_wrong ;

size_t ZSTD_compressBegin_usingCDict_advanced(
    ZSTD_CCtx* const cctx, const ZSTD_CDict* const cdict,
    ZSTD_frameParameters const fParams, unsigned long long const pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_compressBegin_usingCDict_advanced");
    if (cdict==((void*)0)) return ERROR(dictionary_wrong);
    { ZSTD_CCtx_params params = cctx->requestedParams;
        params.cParams = ZSTD_getCParamsFromCDict(cdict);




        if (pledgedSrcSize != ZSTD_CONTENTSIZE_UNKNOWN) {
            U32 const limitedSrcSize = (U32)MIN(pledgedSrcSize, 1U << 19);
            U32 const limitedSrcLog = limitedSrcSize > 1 ? ZSTD_highbit32(limitedSrcSize - 1) + 1 : 1;
            params.cParams.windowLog = MAX(params.cParams.windowLog, limitedSrcLog);
        }
        params.fParams = fParams;
        return ZSTD_compressBegin_internal(cctx,
                                           ((void*)0), 0, ZSTD_dct_auto, ZSTD_dtlm_fast,
                                           cdict,
                                           params, pledgedSrcSize,
                                           ZSTDb_not_buffered);
    }
}
