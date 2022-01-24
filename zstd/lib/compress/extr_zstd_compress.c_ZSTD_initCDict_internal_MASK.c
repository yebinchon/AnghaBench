#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
typedef  scalar_t__ ZSTD_dictLoadMethod_e ;
typedef  scalar_t__ ZSTD_dictContentType_e ;
typedef  void* ZSTD_compressionParameters ;
struct TYPE_12__ {void* cParams; } ;
struct TYPE_10__ {size_t dictContentSize; scalar_t__ dictID; scalar_t__* entropyWorkspace; void const* dictContent; int /*<<< orphan*/  workspace; TYPE_5__ matchState; int /*<<< orphan*/  cBlockState; } ;
typedef  TYPE_2__ ZSTD_CDict ;
struct TYPE_9__ {int contentSizeFlag; } ;
struct TYPE_11__ {void* cParams; TYPE_1__ fParams; int /*<<< orphan*/  compressionLevel; } ;
typedef  TYPE_3__ ZSTD_CCtx_params ;
typedef  scalar_t__ U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (size_t const) ; 
 int /*<<< orphan*/  HUF_WORKSPACE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_CLEVEL_DEFAULT ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 size_t FUNC4 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ *,TYPE_3__*,void const*,size_t,scalar_t__,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (size_t,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ ZSTD_dlm_byRef ; 
 int /*<<< orphan*/  ZSTD_dtlm_full ; 
 int /*<<< orphan*/  ZSTD_resetTarget_CDict ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 size_t const FUNC8 (TYPE_5__*,int /*<<< orphan*/ *,void**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTDcrp_makeClean ; 
 int /*<<< orphan*/  ZSTDirp_reset ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (void*,void const*,size_t) ; 
 int /*<<< orphan*/  memory_allocation ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static size_t FUNC12(
                    ZSTD_CDict* cdict,
              const void* dictBuffer, size_t dictSize,
                    ZSTD_dictLoadMethod_e dictLoadMethod,
                    ZSTD_dictContentType_e dictContentType,
                    ZSTD_compressionParameters cParams)
{
    FUNC0(3, "ZSTD_initCDict_internal (dictContentType:%u)", (unsigned)dictContentType);
    FUNC9(!FUNC3(cParams));
    cdict->matchState.cParams = cParams;
    if ((dictLoadMethod == ZSTD_dlm_byRef) || (!dictBuffer) || (!dictSize)) {
        cdict->dictContent = dictBuffer;
    } else {
         void *internalBuffer = FUNC6(&cdict->workspace, FUNC5(dictSize, sizeof(void*)));
        FUNC2(!internalBuffer, memory_allocation);
        cdict->dictContent = internalBuffer;
        FUNC10(internalBuffer, dictBuffer, dictSize);
    }
    cdict->dictContentSize = dictSize;

    cdict->entropyWorkspace = (U32*)FUNC6(&cdict->workspace, HUF_WORKSPACE_SIZE);


    /* Reset the state to no dictionary */
    FUNC7(&cdict->cBlockState);
    FUNC1(FUNC8(
        &cdict->matchState,
        &cdict->workspace,
        &cParams,
        ZSTDcrp_makeClean,
        ZSTDirp_reset,
        ZSTD_resetTarget_CDict));
    /* (Maybe) load the dictionary
     * Skips loading the dictionary if it is < 8 bytes.
     */
    {   ZSTD_CCtx_params params;
        FUNC11(&params, 0, sizeof(params));
        params.compressionLevel = ZSTD_CLEVEL_DEFAULT;
        params.fParams.contentSizeFlag = 1;
        params.cParams = cParams;
        {   size_t const dictID = FUNC4(
                    &cdict->cBlockState, &cdict->matchState, &cdict->workspace,
                    &params, cdict->dictContent, cdict->dictContentSize,
                    dictContentType, ZSTD_dtlm_full, cdict->entropyWorkspace);
            FUNC1(dictID);
            FUNC9(dictID <= (size_t)(U32)-1);
            cdict->dictID = (U32)dictID;
        }
    }

    return 0;
}