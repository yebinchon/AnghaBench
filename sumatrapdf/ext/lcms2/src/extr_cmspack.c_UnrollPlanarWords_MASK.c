#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt8Number ;
typedef  scalar_t__ cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_3__ {int /*<<< orphan*/  InputFormat; } ;
typedef  TYPE_1__ _cmsTRANSFORM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC7(cmsContext ContextID, register _cmsTRANSFORM* info,
                                  register cmsUInt16Number wIn[],
                                  register cmsUInt8Number* accum,
                                  register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan = FUNC2(info -> InputFormat);
    cmsUInt32Number DoSwap= FUNC3(info ->InputFormat);
    cmsUInt32Number Reverse= FUNC6(info ->InputFormat);
    cmsUInt32Number SwapEndian = FUNC4(info -> InputFormat);
    cmsUInt32Number i;
    cmsUInt8Number* Init = accum;

    if (DoSwap) {
        accum += FUNC5(info -> InputFormat) * Stride;
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;
        cmsUInt16Number v = *(cmsUInt16Number*) accum;

        if (SwapEndian)
            v = FUNC0(v);

        wIn[index] = Reverse ? FUNC1(v) : v;

        accum +=  Stride;
    }

    return (Init + sizeof(cmsUInt16Number));
}