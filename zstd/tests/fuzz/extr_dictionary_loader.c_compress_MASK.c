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
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
typedef  int /*<<< orphan*/  ZSTD_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ *,void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static size_t FUNC5(void* compressed, size_t compressedCapacity,
                       void const* source, size_t sourceSize,
                       void const* dict, size_t dictSize,
                       ZSTD_dictLoadMethod_e dictLoadMethod,
                       ZSTD_dictContentType_e dictContentType)
{
    ZSTD_CCtx* cctx = FUNC3();
    FUNC0(FUNC1(
            cctx, dict, dictSize, dictLoadMethod, dictContentType));
    size_t const compressedSize = FUNC2(
            cctx, compressed, compressedCapacity, source, sourceSize);
    FUNC4(cctx);
    return compressedSize;
}