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
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (size_t) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cctx ; 
 int /*<<< orphan*/ * dctx ; 
 int /*<<< orphan*/  FUNC12 (void*) ; 
 void* FUNC13 (size_t const) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*,void*,size_t) ; 
 size_t FUNC15 (void*,size_t const,void*,size_t,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ *) ; 

int FUNC16(const uint8_t *src, size_t size)
{
    size_t const rBufSize = size;
    void* rBuf = FUNC13(rBufSize);
    size_t cBufSize = FUNC7(size);
    void* cBuf;

    /* Give a random portion of src data to the producer, to use for
    parameter generation. The rest will be used for (de)compression */
    FUZZ_dataProducer_t *producer = FUNC3(src, size);
    size = FUNC5(producer);

    /* Half of the time fuzz with a 1 byte smaller output size.
     * This will still succeed because we don't use a dictionary, so the dictID
     * field is empty, giving us 4 bytes of overhead.
     */
    cBufSize -= FUNC6(producer, 0, 1);

    cBuf = FUNC13(cBufSize);

    FUNC0(cBuf && rBuf);

    if (!cctx) {
        cctx = FUNC8();
        FUNC0(*cctx);
    }
    if (!dctx) {
        dctx = FUNC9();
        FUNC0(*dctx);
    }

    {
        size_t const result =
            FUNC15(rBuf, rBufSize, cBuf, cBufSize, src, size, producer);
        FUNC2(result);
        FUNC1(result == size, "Incorrect regenerated size");
        FUNC1(!FUNC14(src, rBuf, size), "Corruption!");
    }
    FUNC12(rBuf);
    FUNC12(cBuf);
    FUNC4(producer);
#ifndef STATEFUL_FUZZING
    FUNC10(cctx); cctx = NULL;
    FUNC11(dctx); dctx = NULL;
#endif
    return 0;
}