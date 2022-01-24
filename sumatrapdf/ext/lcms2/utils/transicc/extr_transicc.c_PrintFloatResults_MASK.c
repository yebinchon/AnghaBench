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
typedef  int cmsUInt32Number ;
typedef  double cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  OutputColorSpace ; 
 int /*<<< orphan*/ * OutputColorant ; 
 double OutputRange ; 
 scalar_t__ Verbose ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cmsMAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 double FUNC2 (double) ; 
 scalar_t__ lQuantize ; 
 int /*<<< orphan*/  lUnbounded ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static
void FUNC5(cmsContext ContextID, cmsFloat64Number Value[])
{
    cmsUInt32Number i, n;
    char ChannelName[cmsMAX_PATH];
    cmsFloat64Number v;

    n = FUNC0(ContextID, OutputColorSpace);
    for (i=0; i < n; i++) {

        if (OutputColorant != NULL) {

            FUNC1(ContextID, OutputColorant, i, ChannelName, NULL, NULL, NULL, NULL);
        }
        else {
            OutputRange = 1;
            FUNC4(ChannelName, "Channel #%u", i + 1);
        }

        v = (cmsFloat64Number) Value[i]* OutputRange;

        if (lQuantize)
            v = FUNC2(v + 0.5);

        if (!lUnbounded) {

               if (v < 0)
                      v = 0;
               if (v > OutputRange)
                      v = OutputRange;
        }

        if (Verbose <= 0)
            FUNC3("%.4f ", v);
        else
            FUNC3("%s=%.4f ", ChannelName, v);
    }

    FUNC3("\n");
}