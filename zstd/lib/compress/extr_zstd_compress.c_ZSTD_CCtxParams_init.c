
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int contentSizeFlag; } ;
struct TYPE_6__ {int compressionLevel; TYPE_1__ fParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int GENERIC ;
 int RETURN_ERROR_IF (int,int ) ;
 int memset (TYPE_2__*,int ,int) ;

size_t ZSTD_CCtxParams_init(ZSTD_CCtx_params* cctxParams, int compressionLevel) {
    RETURN_ERROR_IF(!cctxParams, GENERIC);
    memset(cctxParams, 0, sizeof(*cctxParams));
    cctxParams->compressionLevel = compressionLevel;
    cctxParams->fParams.contentSizeFlag = 1;
    return 0;
}
