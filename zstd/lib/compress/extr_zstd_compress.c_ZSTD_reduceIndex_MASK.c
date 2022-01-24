#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int hashLog3; int /*<<< orphan*/  hashTable3; int /*<<< orphan*/  chainTable; int /*<<< orphan*/  hashTable; } ;
typedef  TYPE_2__ ZSTD_matchState_t ;
struct TYPE_6__ {int hashLog; scalar_t__ strategy; int chainLog; } ;
struct TYPE_8__ {TYPE_1__ cParams; } ;
typedef  TYPE_3__ ZSTD_CCtx_params ;
typedef  int U32 ;

/* Variables and functions */
 scalar_t__ ZSTD_btlazy2 ; 
 scalar_t__ ZSTD_fast ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int const,int const) ; 

__attribute__((used)) static void FUNC2 (ZSTD_matchState_t* ms, ZSTD_CCtx_params const* params, const U32 reducerValue)
{
    {   U32 const hSize = (U32)1 << params->cParams.hashLog;
        FUNC0(ms->hashTable, hSize, reducerValue);
    }

    if (params->cParams.strategy != ZSTD_fast) {
        U32 const chainSize = (U32)1 << params->cParams.chainLog;
        if (params->cParams.strategy == ZSTD_btlazy2)
            FUNC1(ms->chainTable, chainSize, reducerValue);
        else
            FUNC0(ms->chainTable, chainSize, reducerValue);
    }

    if (ms->hashLog3) {
        U32 const h3Size = (U32)1 << ms->hashLog3;
        FUNC0(ms->hashTable3, h3Size, reducerValue);
    }
}