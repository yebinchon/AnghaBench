
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int params ;
typedef scalar_t__ ZSTD_dictLoadMethod_e ;
typedef scalar_t__ ZSTD_dictContentType_e ;
typedef void* ZSTD_compressionParameters ;
struct TYPE_12__ {void* cParams; } ;
struct TYPE_10__ {size_t dictContentSize; scalar_t__ dictID; scalar_t__* entropyWorkspace; void const* dictContent; int workspace; TYPE_5__ matchState; int cBlockState; } ;
typedef TYPE_2__ ZSTD_CDict ;
struct TYPE_9__ {int contentSizeFlag; } ;
struct TYPE_11__ {void* cParams; TYPE_1__ fParams; int compressionLevel; } ;
typedef TYPE_3__ ZSTD_CCtx_params ;
typedef scalar_t__ U32 ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int FORWARD_IF_ERROR (size_t const) ;
 int HUF_WORKSPACE_SIZE ;
 int RETURN_ERROR_IF (int,int ) ;
 int ZSTD_CLEVEL_DEFAULT ;
 int ZSTD_checkCParams (void*) ;
 size_t ZSTD_compress_insertDictionary (int *,TYPE_5__*,int *,TYPE_3__*,void const*,size_t,scalar_t__,int ,scalar_t__*) ;
 int ZSTD_cwksp_align (size_t,int) ;
 void* ZSTD_cwksp_reserve_object (int *,int ) ;
 scalar_t__ ZSTD_dlm_byRef ;
 int ZSTD_dtlm_full ;
 int ZSTD_resetTarget_CDict ;
 int ZSTD_reset_compressedBlockState (int *) ;
 size_t const ZSTD_reset_matchState (TYPE_5__*,int *,void**,int ,int ,int ) ;
 int ZSTDcrp_makeClean ;
 int ZSTDirp_reset ;
 int assert (int) ;
 int memcpy (void*,void const*,size_t) ;
 int memory_allocation ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static size_t ZSTD_initCDict_internal(
                    ZSTD_CDict* cdict,
              const void* dictBuffer, size_t dictSize,
                    ZSTD_dictLoadMethod_e dictLoadMethod,
                    ZSTD_dictContentType_e dictContentType,
                    ZSTD_compressionParameters cParams)
{
    DEBUGLOG(3, "ZSTD_initCDict_internal (dictContentType:%u)", (unsigned)dictContentType);
    assert(!ZSTD_checkCParams(cParams));
    cdict->matchState.cParams = cParams;
    if ((dictLoadMethod == ZSTD_dlm_byRef) || (!dictBuffer) || (!dictSize)) {
        cdict->dictContent = dictBuffer;
    } else {
         void *internalBuffer = ZSTD_cwksp_reserve_object(&cdict->workspace, ZSTD_cwksp_align(dictSize, sizeof(void*)));
        RETURN_ERROR_IF(!internalBuffer, memory_allocation);
        cdict->dictContent = internalBuffer;
        memcpy(internalBuffer, dictBuffer, dictSize);
    }
    cdict->dictContentSize = dictSize;

    cdict->entropyWorkspace = (U32*)ZSTD_cwksp_reserve_object(&cdict->workspace, HUF_WORKSPACE_SIZE);



    ZSTD_reset_compressedBlockState(&cdict->cBlockState);
    FORWARD_IF_ERROR(ZSTD_reset_matchState(
        &cdict->matchState,
        &cdict->workspace,
        &cParams,
        ZSTDcrp_makeClean,
        ZSTDirp_reset,
        ZSTD_resetTarget_CDict));



    { ZSTD_CCtx_params params;
        memset(&params, 0, sizeof(params));
        params.compressionLevel = ZSTD_CLEVEL_DEFAULT;
        params.fParams.contentSizeFlag = 1;
        params.cParams = cParams;
        { size_t const dictID = ZSTD_compress_insertDictionary(
                    &cdict->cBlockState, &cdict->matchState, &cdict->workspace,
                    &params, cdict->dictContent, cdict->dictContentSize,
                    dictContentType, ZSTD_dtlm_full, cdict->entropyWorkspace);
            FORWARD_IF_ERROR(dictID);
            assert(dictID <= (size_t)(U32)-1);
            cdict->dictID = (U32)dictID;
        }
    }

    return 0;
}
