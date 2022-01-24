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
typedef  int /*<<< orphan*/  cmsPipeline ;
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(cmsPipeline* lut, cmsInt32Number ExpectedStages)
{

    cmsInt32Number nInpChans, nOutpChans, nStages;

    nInpChans  = FUNC1(FUNC0(), lut);
    nOutpChans = FUNC2(FUNC0(), lut);
    nStages    = FUNC3(FUNC0(), lut);

    return (nInpChans == 3) && (nOutpChans == 3) && (nStages == ExpectedStages);
}