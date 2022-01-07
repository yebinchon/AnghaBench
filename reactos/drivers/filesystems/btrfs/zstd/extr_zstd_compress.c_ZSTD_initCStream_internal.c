
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int const* cdict; int const* cdictLocal; int customMem; scalar_t__ staticSize; } ;
typedef TYPE_1__ ZSTD_CStream ;
typedef int ZSTD_CDict ;
struct TYPE_9__ {int cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;
typedef int U32 ;


 int DEBUGLOG (int,char*,...) ;
 size_t ERROR (int ) ;
 int ZSTD_checkCParams (int ) ;
 int const* ZSTD_createCDict_advanced (void const*,size_t,int ,int ,int ,int ) ;
 int ZSTD_dct_auto ;
 int ZSTD_dlm_byCopy ;
 int ZSTD_freeCDict (int const*) ;
 int ZSTD_getCParamsFromCCtxParams (TYPE_2__*,unsigned long long,size_t) ;
 int ZSTD_getCParamsFromCDict (int const*) ;
 int ZSTD_isError (int ) ;
 size_t ZSTD_resetCStream_internal (TYPE_1__*,int *,int ,int ,int const*,TYPE_2__,unsigned long long) ;
 int assert (int) ;
 int memory_allocation ;

size_t ZSTD_initCStream_internal(ZSTD_CStream* zcs,
                    const void* dict, size_t dictSize, const ZSTD_CDict* cdict,
                    ZSTD_CCtx_params params, unsigned long long pledgedSrcSize)
{
    DEBUGLOG(4, "ZSTD_initCStream_internal");
    params.cParams = ZSTD_getCParamsFromCCtxParams(&params, pledgedSrcSize, dictSize);
    assert(!ZSTD_isError(ZSTD_checkCParams(params.cParams)));
    assert(!((dict) && (cdict)));

    if (dict && dictSize >= 8) {
        DEBUGLOG(4, "loading dictionary of size %u", (U32)dictSize);
        if (zcs->staticSize) {

            return ERROR(memory_allocation);
        }
        ZSTD_freeCDict(zcs->cdictLocal);
        zcs->cdictLocal = ZSTD_createCDict_advanced(dict, dictSize,
                                            ZSTD_dlm_byCopy, ZSTD_dct_auto,
                                            params.cParams, zcs->customMem);
        zcs->cdict = zcs->cdictLocal;
        if (zcs->cdictLocal == ((void*)0)) return ERROR(memory_allocation);
    } else {
        if (cdict) {
            params.cParams = ZSTD_getCParamsFromCDict(cdict);
        }
        ZSTD_freeCDict(zcs->cdictLocal);
        zcs->cdictLocal = ((void*)0);
        zcs->cdict = cdict;
    }

    return ZSTD_resetCStream_internal(zcs, ((void*)0), 0, ZSTD_dct_auto, zcs->cdict, params, pledgedSrcSize);
}
