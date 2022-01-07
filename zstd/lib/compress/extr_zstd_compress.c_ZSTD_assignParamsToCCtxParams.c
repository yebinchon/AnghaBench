
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fParams; int cParams; } ;
typedef TYPE_1__ ZSTD_parameters ;
struct TYPE_7__ {int compressionLevel; int fParams; int cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int ZSTD_CLEVEL_DEFAULT ;
 int ZSTD_checkCParams (int ) ;
 int assert (int) ;

__attribute__((used)) static ZSTD_CCtx_params ZSTD_assignParamsToCCtxParams(
        const ZSTD_CCtx_params* cctxParams, const ZSTD_parameters* params)
{
    ZSTD_CCtx_params ret = *cctxParams;
    assert(!ZSTD_checkCParams(params->cParams));
    ret.cParams = params->cParams;
    ret.fParams = params->fParams;
    ret.compressionLevel = ZSTD_CLEVEL_DEFAULT;
    return ret;
}
