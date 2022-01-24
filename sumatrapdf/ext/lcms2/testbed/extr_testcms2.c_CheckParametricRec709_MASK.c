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
typedef  double cmsFloat64Number ;
typedef  float cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 double FUNC1 (double) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int,double*) ; 
 double FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (double) ; 
 double FUNC6 (double,double) ; 

__attribute__((used)) static
cmsInt32Number FUNC7(void)
{
    cmsFloat64Number params[7];
    cmsToneCurve* t;
    int i;

    params[0] = 0.45; /* y */
    params[1] = FUNC6(1.099, 1.0 / 0.45); /* a */
    params[2] = 0.0; /* b */
    params[3] = 4.5; /* c */
    params[4] = 0.018; /* d */
    params[5] = -0.099; /* e */
    params[6] = 0.0; /* f */

    t = FUNC2 (NULL, 5, params);


    for (i=0; i < 256; i++)
    {
        cmsFloat32Number n = (cmsFloat32Number) i / 255.0F;
        cmsUInt16Number f1 = (cmsUInt16Number) FUNC5(255.0 * FUNC3(FUNC0(), t, n) + 0.5);
        cmsUInt16Number f2 = (cmsUInt16Number) FUNC5(255.0*FUNC1((double) i / 255.0) + 0.5);

        if (f1 != f2)
        {
            FUNC4(FUNC0(), t);
            return 0;
        }
    }

    FUNC4(FUNC0(), t);
    return 1;
}