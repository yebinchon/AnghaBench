#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  const* cdict; int /*<<< orphan*/  const* cdictLocal; int /*<<< orphan*/  customMem; scalar_t__ staticSize; } ;
typedef  TYPE_1__ ZSTD_CStream ;
typedef  int /*<<< orphan*/  ZSTD_CDict ;
struct TYPE_9__ {int /*<<< orphan*/  cParams; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;
typedef  int /*<<< orphan*/  U32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  const* FUNC3 (void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ZSTD_dct_auto ; 
 int /*<<< orphan*/  ZSTD_dlm_byCopy ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,unsigned long long,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 size_t FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,TYPE_2__,unsigned long long) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC10(ZSTD_CStream* zcs,
                    const void* dict, size_t dictSize, const ZSTD_CDict* cdict,
                    ZSTD_CCtx_params params, unsigned long long pledgedSrcSize)
{
    FUNC0(4, "ZSTD_initCStream_internal");
    params.cParams = FUNC5(&params, pledgedSrcSize, dictSize);
    FUNC9(!FUNC7(FUNC2(params.cParams)));
    FUNC9(!((dict) && (cdict)));  /* either dict or cdict, not both */

    if (dict && dictSize >= 8) {
        FUNC0(4, "loading dictionary of size %u", (U32)dictSize);
        if (zcs->staticSize) {   /* static CCtx : never uses malloc */
            /* incompatible with internal cdict creation */
            return FUNC1(memory_allocation);
        }
        FUNC4(zcs->cdictLocal);
        zcs->cdictLocal = FUNC3(dict, dictSize,
                                            ZSTD_dlm_byCopy, ZSTD_dct_auto,
                                            params.cParams, zcs->customMem);
        zcs->cdict = zcs->cdictLocal;
        if (zcs->cdictLocal == NULL) return FUNC1(memory_allocation);
    } else {
        if (cdict) {
            params.cParams = FUNC6(cdict);  /* cParams are enforced from cdict; it includes windowLog */
        }
        FUNC4(zcs->cdictLocal);
        zcs->cdictLocal = NULL;
        zcs->cdict = cdict;
    }

    return FUNC8(zcs, NULL, 0, ZSTD_dct_auto, zcs->cdict, params, pledgedSrcSize);
}