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
typedef  scalar_t__ cmsUInt8Number ;
typedef  int cmsUInt32Number ;
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_3__ {int /*<<< orphan*/  OutputFormat; } ;
typedef  TYPE_1__ _cmsTRANSFORM ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC8(cmsContext ContextID, register _cmsTRANSFORM* info,
                                register cmsUInt16Number wOut[],
                                register cmsUInt8Number* output,
                                register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan     = FUNC2(info -> OutputFormat);
    cmsUInt32Number DoSwap    = FUNC3(info ->OutputFormat);
    cmsUInt32Number SwapFirst = FUNC6(info ->OutputFormat);
    cmsUInt32Number Reverse   = FUNC5(info ->OutputFormat);
    cmsUInt32Number i;
    cmsUInt8Number* Init = output;


    if (DoSwap ^ SwapFirst) {
        output += FUNC4(info -> OutputFormat) * Stride;
    }


    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;
        cmsUInt8Number v = FUNC0(wOut[index]);

        *(cmsUInt8Number*)  output = (cmsUInt8Number) (Reverse ? FUNC1(v) : v);
        output += Stride;
    }

    return (Init + 1);

    FUNC7(Stride);
}