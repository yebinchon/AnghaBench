
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int checksumFlag; int contentSizeFlag; int noDictIDFlag; } ;
struct TYPE_5__ {int strategy; int targetLength; int minMatch; int searchLog; int chainLog; int hashLog; int windowLog; } ;
struct TYPE_7__ {TYPE_2__ fParams; TYPE_1__ cParams; } ;
typedef TYPE_3__ ZSTD_parameters ;
typedef int ZSTD_CCtx ;


 int CHECK_RET_Z (int ) ;
 int ZSTD_CCtx_getParameter (int *,int ,int*) ;
 int ZSTD_c_chainLog ;
 int ZSTD_c_checksumFlag ;
 int ZSTD_c_contentSizeFlag ;
 int ZSTD_c_dictIDFlag ;
 int ZSTD_c_hashLog ;
 int ZSTD_c_minMatch ;
 int ZSTD_c_searchLog ;
 int ZSTD_c_strategy ;
 int ZSTD_c_targetLength ;
 int ZSTD_c_windowLog ;

__attribute__((used)) static size_t getCCtxParams(ZSTD_CCtx* zc, ZSTD_parameters* savedParams)
{
    int value;
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_windowLog, (int*)&savedParams->cParams.windowLog));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_hashLog, (int*)&savedParams->cParams.hashLog));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_chainLog, (int*)&savedParams->cParams.chainLog));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_searchLog, (int*)&savedParams->cParams.searchLog));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_minMatch, (int*)&savedParams->cParams.minMatch));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_targetLength, (int*)&savedParams->cParams.targetLength));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_strategy, &value));
    savedParams->cParams.strategy = value;

    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_checksumFlag, &savedParams->fParams.checksumFlag));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_contentSizeFlag, &savedParams->fParams.contentSizeFlag));
    CHECK_RET_Z(ZSTD_CCtx_getParameter(zc, ZSTD_c_dictIDFlag, &value));
    savedParams->fParams.noDictIDFlag = !value;
    return 0;
}
