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
struct TYPE_3__ {int /*<<< orphan*/  OutputFormat; } ;
typedef  TYPE_1__ _cmsTRANSFORM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC9(cmsContext ContextID, register _cmsTRANSFORM* info,
                             register cmsUInt16Number wOut[],
                             register cmsUInt8Number* output,
                             register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan  = FUNC2(info -> OutputFormat);
    cmsUInt32Number DoSwap   = FUNC3(info ->OutputFormat);
    cmsUInt32Number Reverse    = FUNC5(info ->OutputFormat);
    cmsUInt32Number Extra   = FUNC4(info -> OutputFormat);
    cmsUInt32Number SwapFirst  = FUNC6(info -> OutputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt8Number* swap1;
    cmsUInt8Number v = 0;
    cmsUInt32Number i;

    swap1 = output;

    if (ExtraFirst) {
        output += Extra;
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        v = FUNC0(wOut[index]);

        if (Reverse)
            v = FUNC1(v);

        *output++ = v;
    }

    if (!ExtraFirst) {
        output += Extra;
    }

    if (Extra == 0 && SwapFirst) {

        FUNC8(swap1 + 1, swap1, nChan-1);
        *swap1 = v;
    }


    return output;

    FUNC7(Stride);
}