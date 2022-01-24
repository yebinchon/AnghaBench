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
typedef  double cmsFloat64Number ;
typedef  double cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_3__ {int /*<<< orphan*/  InputFormat; } ;
typedef  TYPE_1__ _cmsTRANSFORM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (double) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC11(cmsContext ContextID, register _cmsTRANSFORM* info,
                                register cmsUInt16Number wIn[],
                                register cmsUInt8Number* accum,
                                register cmsUInt32Number Stride)
{

    cmsUInt32Number nChan  = FUNC3(info -> InputFormat);
    cmsUInt32Number DoSwap   = FUNC4(info ->InputFormat);
    cmsUInt32Number Reverse    = FUNC6(info ->InputFormat);
    cmsUInt32Number SwapFirst  = FUNC8(info -> InputFormat);
    cmsUInt32Number Extra   = FUNC5(info -> InputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt32Number Planar     = FUNC7(info -> InputFormat);
    cmsFloat32Number v;
    cmsUInt16Number  vi;
    cmsUInt32Number i, start = 0;
    cmsFloat64Number maximum = FUNC0(info ->InputFormat) ? 655.35 : 65535.0;

    Stride /= FUNC1(info->InputFormat);

    if (ExtraFirst)
            start = Extra;

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        if (Planar)
            v = (cmsFloat32Number) ((cmsFloat32Number*) accum)[(i + start) * Stride];
        else
            v = (cmsFloat32Number) ((cmsFloat32Number*) accum)[i + start];

        vi = FUNC9(v * maximum);

        if (Reverse)
            vi = FUNC2(vi);

        wIn[index] = vi;
    }


    if (Extra == 0 && SwapFirst) {
        cmsUInt16Number tmp = wIn[0];

        FUNC10(&wIn[0], &wIn[1], (nChan-1) * sizeof(cmsUInt16Number));
        wIn[nChan-1] = tmp;
    }

    if (FUNC7(info -> InputFormat))
        return accum + sizeof(cmsFloat32Number);
    else
        return accum + (nChan + Extra) * sizeof(cmsFloat32Number);
}