#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
typedef  int /*<<< orphan*/  ZSTD_cwksp ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
struct TYPE_4__ {int /*<<< orphan*/  workspace; } ;
typedef  TYPE_1__ const ZSTD_CDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,unsigned int,unsigned int,unsigned int) ; 
 int HUF_WORKSPACE_SIZE ; 
 int FUNC1 (size_t,int) ; 
 size_t const FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ZSTD_dlm_byRef ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const*,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const ZSTD_CDict* FUNC9(
                                 void* workspace, size_t workspaceSize,
                           const void* dict, size_t dictSize,
                                 ZSTD_dictLoadMethod_e dictLoadMethod,
                                 ZSTD_dictContentType_e dictContentType,
                                 ZSTD_compressionParameters cParams)
{
    size_t const matchStateSize = FUNC8(&cParams, /* forCCtx */ 0);
    size_t const neededSize = FUNC2(sizeof(ZSTD_CDict))
                            + (dictLoadMethod == ZSTD_dlm_byRef ? 0
                               : FUNC2(FUNC1(dictSize, sizeof(void*))))
                            + FUNC2(HUF_WORKSPACE_SIZE)
                            + matchStateSize;
    ZSTD_CDict* cdict;

    if ((size_t)workspace & 7) return NULL;  /* 8-aligned */

    {
        ZSTD_cwksp ws;
        FUNC3(&ws, workspace, workspaceSize);
        cdict = (ZSTD_CDict*)FUNC5(&ws, sizeof(ZSTD_CDict));
        if (cdict == NULL) return NULL;
        FUNC4(&cdict->workspace, &ws);
    }

    FUNC0(4, "(workspaceSize < neededSize) : (%u < %u) => %u",
        (unsigned)workspaceSize, (unsigned)neededSize, (unsigned)(workspaceSize < neededSize));
    if (workspaceSize < neededSize) return NULL;

    if (FUNC7( FUNC6(cdict,
                                              dict, dictSize,
                                              dictLoadMethod, dictContentType,
                                              cParams) ))
        return NULL;

    return cdict;
}