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
typedef  int cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
cmsInt32Number FUNC5(void)
{
    cmsToneCurve* p, *g;
    cmsUInt16Number Tab[16];

    Tab[0] = 0;
    Tab[1] = 0;
    Tab[2] = 0;
    Tab[3] = 0;
    Tab[4] = 0;
    Tab[5] = 0x5555;
    Tab[6] = 0x6666;
    Tab[7] = 0x7777;
    Tab[8] = 0x8888;
    Tab[9] = 0x9999;
    Tab[10]= 0xffff;
    Tab[11]= 0xffff;
    Tab[12]= 0xffff;
    Tab[13]= 0xffff;
    Tab[14]= 0xffff;
    Tab[15]= 0xffff;

    p = FUNC2(FUNC1(), 16, Tab);
    g = FUNC4(FUNC1(), p);

    // Now let's check some points
    if (!FUNC0(g, 0x5555, 0x5555)) return 0;
    if (!FUNC0(g, 0x7777, 0x7777)) return 0;

    // First point for zero
    if (!FUNC0(g, 0x0000, 0x4444)) return 0;

    // Last point
    if (!FUNC0(g, 0xFFFF, 0xFFFF)) return 0;

    FUNC3(FUNC1(), p);
    FUNC3(FUNC1(), g);

    return 1;
}