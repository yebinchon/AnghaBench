
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


 int FORWARD_IF_ERROR (int ) ;
 int GENERIC ;
 int RETURN_ERROR_IF (int,int ) ;
 int ZSTD_CLEVEL_DEFAULT ;
 int ZSTD_checkCParams (int ) ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;

size_t ZSTD_CCtxParams_init_advanced(ZSTD_CCtx_params* cctxParams, ZSTD_parameters params)
{
    RETURN_ERROR_IF(!cctxParams, GENERIC);
    FORWARD_IF_ERROR( ZSTD_checkCParams(params.cParams) );
    memset(cctxParams, 0, sizeof(*cctxParams));
    assert(!ZSTD_checkCParams(params.cParams));
    cctxParams->cParams = params.cParams;
    cctxParams->fParams = params.fParams;
    cctxParams->compressionLevel = ZSTD_CLEVEL_DEFAULT;
    return 0;
}
