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
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ *) ; 
 size_t FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t const) ; 
 size_t FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (void*,void*,size_t const,int /*<<< orphan*/  const*,size_t,int const) ; 
 void* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*) ; 
 void* cctx ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 int /*<<< orphan*/  kMaxClevel ; 
 int /*<<< orphan*/  kMinClevel ; 
 void* FUNC11 (size_t const) ; 

int FUNC12(const uint8_t *src, size_t size)
{
    /* Give a random portion of src data to the producer, to use for
    parameter generation. The rest will be used for (de)compression */
    FUZZ_dataProducer_t *producer = FUNC1(src, size);
    size = FUNC4(producer);

    size_t const maxSize = FUNC6(size);
    size_t const bufSize = FUNC5(producer, 0, maxSize);

    int const cLevel = FUNC3(producer, kMinClevel, kMaxClevel);

    if (!cctx) {
        cctx = FUNC8();
        FUNC0(cctx);
    }

    void *rBuf = FUNC11(bufSize);
    FUNC0(rBuf);
    FUNC7(cctx, rBuf, bufSize, src, size, cLevel);
    FUNC10(rBuf);
    FUNC2(producer);
#ifndef STATEFUL_FUZZING
    FUNC9(cctx); cctx = NULL;
#endif
    return 0;
}