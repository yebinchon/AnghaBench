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
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC4 (int /*<<< orphan*/ ,void*,size_t,void const*,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ ,void*,size_t,void const*,size_t,int const) ; 
 size_t FUNC6 (int /*<<< orphan*/ ,void*,size_t,void*,size_t) ; 
 int /*<<< orphan*/  cctx ; 
 int /*<<< orphan*/  dctx ; 
 int /*<<< orphan*/  kMaxClevel ; 
 int /*<<< orphan*/  kMinClevel ; 

__attribute__((used)) static size_t FUNC7(void *result, size_t resultCapacity,
                            void *compressed, size_t compressedCapacity,
                            const void *src, size_t srcSize,
                            FUZZ_dataProducer_t *producer)
{
    size_t cSize;
    if (FUNC2(producer, 0, 1)) {
        FUNC3(cctx, srcSize, producer);
        cSize = FUNC4(cctx, compressed, compressedCapacity, src, srcSize);
    } else {
      int const cLevel = FUNC1(producer, kMinClevel, kMaxClevel);

        cSize = FUNC5(
            cctx, compressed, compressedCapacity, src, srcSize, cLevel);
    }
    FUNC0(cSize);
    return FUNC6(dctx, result, resultCapacity, compressed, cSize);
}