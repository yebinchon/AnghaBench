#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_compressionParameters ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 size_t HUF_WORKSPACE_SIZE ; 
 scalar_t__ ZSTD_dlm_byRef ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

size_t FUNC2(
        size_t dictSize, ZSTD_compressionParameters cParams,
        ZSTD_dictLoadMethod_e dictLoadMethod)
{
    FUNC0(5, "sizeof(ZSTD_CDict) : %u", (U32)sizeof(ZSTD_CDict));
    return sizeof(ZSTD_CDict) + HUF_WORKSPACE_SIZE + FUNC1(&cParams, /* forCCtx */ 0)
           + (dictLoadMethod == ZSTD_dlm_byRef ? 0 : dictSize);
}