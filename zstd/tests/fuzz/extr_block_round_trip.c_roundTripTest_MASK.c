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
typedef  int /*<<< orphan*/  ZSTD_parameters ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ ,void*,size_t,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,void*,size_t,void*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cctx ; 
 int /*<<< orphan*/  dctx ; 
 int /*<<< orphan*/  FUNC7 (void*,void const*,size_t) ; 

__attribute__((used)) static size_t FUNC8(void *result, size_t resultCapacity,
                            void *compressed, size_t compressedCapacity,
                            const void *src, size_t srcSize,
                            int cLevel)
{
    ZSTD_parameters const params = FUNC6(cLevel, srcSize, 0);
    size_t ret = FUNC2(cctx, NULL, 0, params, srcSize);
    FUNC1(ret);

    ret = FUNC3(cctx, compressed, compressedCapacity, src, srcSize);
    FUNC1(ret);
    if (ret == 0) {
        FUNC0(resultCapacity >= srcSize);
        FUNC7(result, src, srcSize);
        return srcSize;
    }
    FUNC4(dctx);
    return FUNC5(dctx, result, resultCapacity, compressed, ret);
}