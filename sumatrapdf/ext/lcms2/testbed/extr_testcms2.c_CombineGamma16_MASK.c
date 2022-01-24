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
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsToneCurve* FUNC4(cmsToneCurve* g1, cmsToneCurve* g2)
{
    cmsUInt16Number Tab[256];

    cmsInt32Number i;

    for (i=0; i < 256; i++) {

        cmsUInt16Number wValIn;

        wValIn = FUNC1(i, 256);
        Tab[i] = FUNC3(FUNC0(), g2, FUNC3(FUNC0(), g1, wValIn));
    }

    return  FUNC2(FUNC0(), 256, Tab);
}