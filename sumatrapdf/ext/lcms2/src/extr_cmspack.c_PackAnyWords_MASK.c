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
typedef  int /*<<< orphan*/  cmsContext ;
struct TYPE_3__ {int /*<<< orphan*/  OutputFormat; } ;
typedef  TYPE_1__ _cmsTRANSFORM ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static
cmsUInt8Number* FUNC10(cmsContext ContextID, register _cmsTRANSFORM* info,
                             register cmsUInt16Number wOut[],
                             register cmsUInt8Number* output,
                             register cmsUInt32Number Stride)
{
    cmsUInt32Number nChan  = FUNC2(info -> OutputFormat);
    cmsUInt32Number SwapEndian = FUNC4(info -> OutputFormat);
    cmsUInt32Number DoSwap   = FUNC3(info ->OutputFormat);
    cmsUInt32Number Reverse    = FUNC6(info ->OutputFormat);
    cmsUInt32Number Extra   = FUNC5(info -> OutputFormat);
    cmsUInt32Number SwapFirst  = FUNC7(info -> OutputFormat);
    cmsUInt32Number ExtraFirst = DoSwap ^ SwapFirst;
    cmsUInt16Number* swap1;
    cmsUInt16Number v = 0;
    cmsUInt32Number i;

    swap1 = (cmsUInt16Number*) output;

    if (ExtraFirst) {
        output += Extra * sizeof(cmsUInt16Number);
    }

    for (i=0; i < nChan; i++) {

        cmsUInt32Number index = DoSwap ? (nChan - i - 1) : i;

        v = wOut[index];

        if (SwapEndian)
            v = FUNC0(v);

        if (Reverse)
            v = FUNC1(v);

        *(cmsUInt16Number*) output = v;

        output += sizeof(cmsUInt16Number);
    }

    if (!ExtraFirst) {
        output += Extra * sizeof(cmsUInt16Number);
    }

    if (Extra == 0 && SwapFirst) {

        FUNC9(swap1 + 1, swap1, (nChan-1)* sizeof(cmsUInt16Number));
        *swap1 = v;
    }


    return output;

    FUNC8(Stride);
}