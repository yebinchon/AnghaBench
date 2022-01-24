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
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_3__ {int /*<<< orphan*/  InputFormat; int /*<<< orphan*/  OutputFormat; } ;
typedef  TYPE_1__ _cmsTRANSFORM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC10(cmsContext ContextID, _cmsTRANSFORM* info,
                                    cmsFloat32Number wIn[],
                                    cmsUInt8Number* accum,
                                    cmsUInt32Number Stride)
{

    cmsUInt32Number nChan      = FUNC2(info -> InputFormat);
    cmsUInt32Number DoSwap     = FUNC3(info ->InputFormat);
    cmsUInt32Number Reverse    = FUNC5(info ->InputFormat);
    cmsUInt32Number SwapFirst  = FUNC7(info -> InputFormat);
    cmsUInt32Number Extra      = FUNC4(info -> InputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt32Number Planar     = FUNC6(info -> InputFormat);
    cmsFloat32Number v;
    cmsUInt32Number i, start = 0;
    cmsFloat32Number maximum = FUNC0(info ->InputFormat) ? 100.0F : 1.0F;

    Stride /= FUNC1(info->OutputFormat);

    if (ExtraFirst)
            start = Extra;

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        if (Planar)
            v =  FUNC8 ( ((cmsUInt16Number*) accum)[(i + start) * Stride] );
        else
            v =  FUNC8 ( ((cmsUInt16Number*) accum)[i + start] ) ;

        v /= maximum;

        wIn[index] = Reverse ? 1 - v : v;
    }


    if (Extra == 0 && SwapFirst) {
        cmsFloat32Number tmp = wIn[0];

        FUNC9(&wIn[0], &wIn[1], (nChan-1) * sizeof(cmsFloat32Number));
        wIn[nChan-1] = tmp;
    }

    if (FUNC6(info -> InputFormat))
        return accum + sizeof(cmsUInt16Number);
    else
        return accum + (nChan + Extra) * sizeof(cmsUInt16Number);
}