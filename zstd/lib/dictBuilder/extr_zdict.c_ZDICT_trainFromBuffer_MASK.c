#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
struct TYPE_5__ {int compressionLevel; int /*<<< orphan*/  notificationLevel; } ;
struct TYPE_6__ {int d; int steps; TYPE_1__ zParams; } ;
typedef  TYPE_2__ ZDICT_fastCover_params_t ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUGLEVEL ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t FUNC1 (void*,size_t,void const*,size_t const*,unsigned int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

size_t FUNC3(void* dictBuffer, size_t dictBufferCapacity,
                             const void* samplesBuffer, const size_t* samplesSizes, unsigned nbSamples)
{
    ZDICT_fastCover_params_t params;
    FUNC0(3, "ZDICT_trainFromBuffer");
    FUNC2(&params, 0, sizeof(params));
    params.d = 8;
    params.steps = 4;
    /* Default to level 6 since no compression level information is available */
    params.zParams.compressionLevel = 3;
#if defined(DEBUGLEVEL) && (DEBUGLEVEL>=1)
    params.zParams.notificationLevel = DEBUGLEVEL;
#endif
    return FUNC1(dictBuffer, dictBufferCapacity,
                                               samplesBuffer, samplesSizes, nbSamples,
                                               &params);
}