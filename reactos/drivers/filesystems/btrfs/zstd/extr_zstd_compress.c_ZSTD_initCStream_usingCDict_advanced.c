
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_frameParameters ;
struct TYPE_7__ {int fParams; int cParams; } ;
struct TYPE_6__ {TYPE_2__ requestedParams; } ;
typedef TYPE_1__ ZSTD_CStream ;
typedef int ZSTD_CDict ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int DEBUGLOG (int,char*) ;
 size_t ERROR (int ) ;
 int ZSTD_getCParamsFromCDict (int const*) ;
 size_t ZSTD_initCStream_internal (TYPE_1__*,int *,int ,int const*,TYPE_2__,unsigned long long) ;
 int dictionary_wrong ;

size_t ZSTD_initCStream_usingCDict_advanced(ZSTD_CStream* zcs,
                                            const ZSTD_CDict* cdict,
                                            ZSTD_frameParameters fParams,
                                            unsigned long long pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_initCStream_usingCDict_advanced");
    if (!cdict) return ERROR(dictionary_wrong);
    { ZSTD_CCtx_params params = zcs->requestedParams;
        params.cParams = ZSTD_getCParamsFromCDict(cdict);
        params.fParams = fParams;
        return ZSTD_initCStream_internal(zcs,
                                ((void*)0), 0, cdict,
                                params, pledgedSrcSize);
    }
}
