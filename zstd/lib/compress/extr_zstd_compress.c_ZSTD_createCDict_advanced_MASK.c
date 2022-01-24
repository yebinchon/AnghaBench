#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  scalar_t__ ZSTD_dictContentType_e ;
typedef  int /*<<< orphan*/  ZSTD_cwksp ;
struct TYPE_9__ {int /*<<< orphan*/  customFree; int /*<<< orphan*/  customAlloc; } ;
typedef  TYPE_1__ ZSTD_customMem ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
struct TYPE_10__ {scalar_t__ compressionLevel; TYPE_1__ customMem; int /*<<< orphan*/  workspace; } ;
typedef  TYPE_2__ ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int) ; 
 int HUF_WORKSPACE_SIZE ; 
 int FUNC1 (size_t,int) ; 
 size_t FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void* const,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ZSTD_dlm_byRef ; 
 int /*<<< orphan*/  FUNC6 (void* const,TYPE_1__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,void const*,size_t,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (size_t const,TYPE_1__) ; 
 size_t FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

ZSTD_CDict* FUNC13(const void* dictBuffer, size_t dictSize,
                                      ZSTD_dictLoadMethod_e dictLoadMethod,
                                      ZSTD_dictContentType_e dictContentType,
                                      ZSTD_compressionParameters cParams, ZSTD_customMem customMem)
{
    FUNC0(3, "ZSTD_createCDict_advanced, mode %u", (unsigned)dictContentType);
    if (!customMem.customAlloc ^ !customMem.customFree) return NULL;

    {   size_t const workspaceSize =
            FUNC2(sizeof(ZSTD_CDict)) +
            FUNC2(HUF_WORKSPACE_SIZE) +
            FUNC11(&cParams, /* forCCtx */ 0) +
            (dictLoadMethod == ZSTD_dlm_byRef ? 0
             : FUNC2(FUNC1(dictSize, sizeof(void*))));
        void* const workspace = FUNC10(workspaceSize, customMem);
        ZSTD_cwksp ws;
        ZSTD_CDict* cdict;

        if (!workspace) {
            FUNC6(workspace, customMem);
            return NULL;
        }

        FUNC3(&ws, workspace, workspaceSize);

        cdict = (ZSTD_CDict*)FUNC5(&ws, sizeof(ZSTD_CDict));
        FUNC12(cdict != NULL);
        FUNC4(&cdict->workspace, &ws);
        cdict->customMem = customMem;
        cdict->compressionLevel = 0; /* signals advanced API usage */

        if (FUNC9( FUNC8(cdict,
                                        dictBuffer, dictSize,
                                        dictLoadMethod, dictContentType,
                                        cParams) )) {
            FUNC7(cdict);
            return NULL;
        }

        return cdict;
    }
}