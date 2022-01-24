#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_frameParameters ;
struct TYPE_7__ {int /*<<< orphan*/  fParams; int /*<<< orphan*/  cParams; } ;
struct TYPE_6__ {TYPE_2__ requestedParams; } ;
typedef  TYPE_1__ ZSTD_CStream ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
typedef  TYPE_2__ ZSTD_CCtx_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_2__,unsigned long long) ; 
 int /*<<< orphan*/  dictionary_wrong ; 

size_t FUNC4(ZSTD_CStream* zcs,
                                            const ZSTD_CDict* cdict,
                                            ZSTD_frameParameters fParams,
                                            unsigned long long pledgedSrcSize)
{
    FUNC0(4, "ZSTD_initCStream_usingCDict_advanced");
    if (!cdict) return FUNC1(dictionary_wrong); /* cannot handle NULL cdict (does not know what to do) */
    {   ZSTD_CCtx_params params = zcs->requestedParams;
        params.cParams = FUNC2(cdict);
        params.fParams = fParams;
        return FUNC3(zcs,
                                NULL, 0, cdict,
                                params, pledgedSrcSize);
    }
}