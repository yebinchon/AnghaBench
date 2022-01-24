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
typedef  int /*<<< orphan*/  cmsToneCurve ;
typedef  int cmsInt32Number ;
typedef  double cmsFloat64Number ;
typedef  double cmsFloat32Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 double MaxErr ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int,double*) ; 
 double FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 double FUNC5 (double) ; 
 double FUNC6 (double,double) ; 
 double FUNC7 (double,float) ; 
 int /*<<< orphan*/  FUNC8 (char*,double) ; 

__attribute__((used)) static
cmsInt32Number FUNC9(cmsFloat64Number g)
{
    cmsFloat32Number Values[1025];
    cmsToneCurve* Curve;
    cmsInt32Number i;
    cmsFloat32Number in, out;
    cmsFloat64Number val, Err;

    for (i=0; i <= 1024; i++) {

        in = (cmsFloat32Number) (i / 1024.0);
        Values[i] = FUNC7(in, (float) g);
    }

    Curve = FUNC2(FUNC1(), 1025, Values);

    MaxErr = 0.0;
    for (i=0; i <= 0xffff; i++) {

        in = (cmsFloat32Number) (i / 65535.0);
        out = FUNC3(FUNC1(), Curve, in);
        val = FUNC6(in, g);

        Err = FUNC5(val - out);
        if (Err > MaxErr) MaxErr = Err;
    }

    if (MaxErr > 0) FUNC8("|Err|<%lf ", MaxErr * 65535.0);

    if (!FUNC0(Curve, g)) return 0;

    FUNC4(FUNC1(), Curve);
    return 1;
}