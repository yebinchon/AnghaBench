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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  FUZZ_dataProducer_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (size_t const) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (size_t) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 size_t FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,size_t const) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 size_t bufSize ; 
 int /*<<< orphan*/ * cBuf ; 
 int /*<<< orphan*/ * cctx ; 
 size_t FUNC12 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * dctx ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (size_t) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/ * rBuf ; 

int FUNC16(const uint8_t *src, size_t size)
{
    size_t neededBufSize;

    /* Give a random portion of src data to the producer, to use for
    parameter generation. The rest will be used for (de)compression */
    FUZZ_dataProducer_t *producer = FUNC3(src, size);
    size = FUNC5(producer);

    neededBufSize = FUNC6(size) * 15;

    /* Allocate all buffers and contexts if not already allocated */
    if (neededBufSize > bufSize) {
        FUNC13(cBuf);
        FUNC13(rBuf);
        cBuf = (uint8_t*)FUNC14(neededBufSize);
        rBuf = (uint8_t*)FUNC14(neededBufSize);
        bufSize = neededBufSize;
        FUNC0(cBuf && rBuf);
    }
    if (!cctx) {
        cctx = FUNC7();
        FUNC0(*cctx);
    }
    if (!dctx) {
        dctx = FUNC8();
        FUNC0(*dctx);
    }

    {
        size_t const cSize = FUNC12(cBuf, neededBufSize, src, size, producer);
        size_t const rSize =
            FUNC9(dctx, rBuf, neededBufSize, cBuf, cSize);
        FUNC2(rSize);
        FUNC1(rSize == size, "Incorrect regenerated size");
        FUNC1(!FUNC15(src, rBuf, size), "Corruption!");
    }

    FUNC4(producer);
#ifndef STATEFUL_FUZZING
    FUNC10(cctx); cctx = NULL;
    FUNC11(dctx); dctx = NULL;
#endif
    return 0;
}