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
typedef  int /*<<< orphan*/  ZDICT_legacy_params_t ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ NOISELENGTH ; 
 size_t const ZDICT_MIN_SAMPLES_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 size_t FUNC2 (size_t const*,unsigned int) ; 
 size_t FUNC3 (void*,size_t,void*,size_t const*,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 void* FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*,void const*,size_t const) ; 
 int /*<<< orphan*/  memory_allocation ; 

size_t FUNC7(void* dictBuffer, size_t dictBufferCapacity,
                              const void* samplesBuffer, const size_t* samplesSizes, unsigned nbSamples,
                              ZDICT_legacy_params_t params)
{
    size_t result;
    void* newBuff;
    size_t const sBuffSize = FUNC2(samplesSizes, nbSamples);
    if (sBuffSize < ZDICT_MIN_SAMPLES_SIZE) return 0;   /* not enough content => no dictionary */

    newBuff = FUNC5(sBuffSize + NOISELENGTH);
    if (!newBuff) return FUNC0(memory_allocation);

    FUNC6(newBuff, samplesBuffer, sBuffSize);
    FUNC1((char*)newBuff + sBuffSize, NOISELENGTH);   /* guard band, for end of buffer condition */

    result =
        FUNC3(dictBuffer, dictBufferCapacity, newBuff,
                                            samplesSizes, nbSamples, params);
    FUNC4(newBuff);
    return result;
}