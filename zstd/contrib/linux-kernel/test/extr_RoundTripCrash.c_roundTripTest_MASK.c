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
 size_t FUNC0 (int,size_t) ; 
 size_t FUNC1 (int /*<<< orphan*/ ,void*,size_t,void const*,size_t,int /*<<< orphan*/  const) ; 
 size_t FUNC2 (int /*<<< orphan*/ ,void*,size_t,void*,size_t const) ; 
 int FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int const,size_t,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t const) ; 
 int /*<<< orphan*/  cctx ; 
 int /*<<< orphan*/  dctx ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 unsigned int const kMaxClevel ; 
 int /*<<< orphan*/  stderr ; 
 unsigned int FUNC7 (void const*,size_t const,int /*<<< orphan*/ ) ; 

__attribute__((used)) static size_t FUNC8(void* resultBuff, size_t resultBuffCapacity,
                            void* compressedBuff, size_t compressedBuffCapacity,
                      const void* srcBuff, size_t srcBuffSize)
{
    size_t const hashLength = FUNC0(128, srcBuffSize);
    unsigned const h32 = FUNC7(srcBuff, hashLength, 0);
    int const cLevel = h32 % kMaxClevel;
    ZSTD_parameters const params = FUNC4(cLevel, srcBuffSize, 0);
    size_t const cSize = FUNC1(cctx, compressedBuff, compressedBuffCapacity, srcBuff, srcBuffSize, params);
    if (FUNC5(cSize)) {
        FUNC6(stderr, "Compression error : %u \n", FUNC3(cSize));
        return cSize;
    }
    return FUNC2(dctx, resultBuff, resultBuffCapacity, compressedBuff, cSize);
}