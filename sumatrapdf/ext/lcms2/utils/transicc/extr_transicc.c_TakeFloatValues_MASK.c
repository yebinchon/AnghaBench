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
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int /*<<< orphan*/  InputColorSpace ; 
 scalar_t__ InputColorant ; 
 scalar_t__ InputNamedColor ; 
 int InputRange ; 
 scalar_t__ FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int cmsMAX_PATH ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void FUNC9(cmsContext ContextID, cmsFloat64Number Float[])
{
    cmsUInt32Number i, n;
    char ChannelName[cmsMAX_PATH];
    char Buffer[4096];

    if (FUNC8(stdin))
        FUNC5(stderr, "\nEnter values, 'q' to quit\n");

    if (InputNamedColor) {

        // This is named color index, which is always cmsUInt16Number
        cmsUInt16Number index = FUNC0(ContextID);
        FUNC6(Float, &index, sizeof(cmsUInt16Number));
        return;
    }

    n = FUNC3(ContextID, InputColorSpace);
    for (i=0; i < n; i++) {

        if (InputColorant) {
            FUNC4(ContextID, InputColorant, i, ChannelName, NULL, NULL, NULL, NULL);
        }
        else {
            InputRange = 1;
            FUNC7(ChannelName, "Channel #%u", i+1);
        }

        FUNC1(ContextID, Buffer, "%s? ", ChannelName);

        Float[i] = (cmsFloat64Number) FUNC2(Buffer) / InputRange;
    }

    if (FUNC8(stdin))
        FUNC5(stderr, "\n");
}