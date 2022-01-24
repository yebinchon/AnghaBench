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
struct TYPE_4__ {int /*<<< orphan*/  cParams; } ;
typedef  TYPE_1__ ZSTD_parameters ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t,void const*,size_t,TYPE_1__*) ; 

size_t FUNC4 (ZSTD_CCtx* cctx,
                               void* dst, size_t dstCapacity,
                         const void* src, size_t srcSize,
                         const void* dict,size_t dictSize,
                               ZSTD_parameters params)
{
    FUNC0(4, "ZSTD_compress_advanced");
    FUNC1(FUNC2(params.cParams));
    return FUNC3(cctx,
                                  dst, dstCapacity,
                                  src, srcSize,
                                  dict, dictSize,
                                  &params);
}