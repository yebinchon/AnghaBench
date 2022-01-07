
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cctxParams ;
typedef int ZSTD_compressionParameters ;
struct TYPE_5__ {int contentSizeFlag; } ;
struct TYPE_6__ {TYPE_1__ fParams; int compressionLevel; int cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int ZSTD_CLEVEL_DEFAULT ;
 int ZSTD_checkCParams (int ) ;
 int assert (int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static ZSTD_CCtx_params ZSTD_makeCCtxParamsFromCParams(
        ZSTD_compressionParameters cParams)
{
    ZSTD_CCtx_params cctxParams;
    memset(&cctxParams, 0, sizeof(cctxParams));
    cctxParams.cParams = cParams;
    cctxParams.compressionLevel = ZSTD_CLEVEL_DEFAULT;
    assert(!ZSTD_checkCParams(cParams));
    cctxParams.fParams.contentSizeFlag = 1;
    return cctxParams;
}
