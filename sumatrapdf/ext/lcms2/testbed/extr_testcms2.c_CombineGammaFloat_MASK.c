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
typedef  scalar_t__ cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  float cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,scalar_t__*) ; 
 float FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,float) ; 
 scalar_t__ FUNC3 (float) ; 

__attribute__((used)) static
cmsToneCurve* FUNC4(cmsToneCurve* g1, cmsToneCurve* g2)
{
    cmsUInt16Number Tab[256];
    cmsFloat32Number f;
    cmsInt32Number i;

    for (i=0; i < 256; i++) {

        f = (cmsFloat32Number) i / 255.0F;
        f = FUNC2(FUNC0(), g2, FUNC2(FUNC0(), g1, f));

        Tab[i] = (cmsUInt16Number) FUNC3(f * 65535.0 + 0.5);
    }

    return  FUNC1(FUNC0(), 256, Tab);
}