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
typedef  int /*<<< orphan*/  cmsS15Fixed16Number ;
typedef  int cmsInt32Number ;
typedef  double cmsFloat64Number ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double) ; 
 double FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double) ; 
 double cmsD50X ; 
 double cmsD50Y ; 
 double cmsD50Z ; 
 double FUNC4 (double) ; 
 double FUNC5 (double) ; 

__attribute__((used)) static
cmsInt32Number FUNC6(void)
{
    cmsFloat64Number cmsD50X_2 =  0.96420288;
    cmsFloat64Number cmsD50Y_2 =  1.0;
    cmsFloat64Number cmsD50Z_2 = 0.82490540;

    cmsS15Fixed16Number xe = FUNC3(FUNC0(), cmsD50X);
    cmsS15Fixed16Number ye = FUNC3(FUNC0(), cmsD50Y);
    cmsS15Fixed16Number ze = FUNC3(FUNC0(), cmsD50Z);

    cmsFloat64Number x =  FUNC2(FUNC0(), xe);
    cmsFloat64Number y =  FUNC2(FUNC0(), ye);
    cmsFloat64Number z =  FUNC2(FUNC0(), ze);

    double dx = FUNC4(cmsD50X - x);
    double dy = FUNC4(cmsD50Y - y);
    double dz = FUNC4(cmsD50Z - z);

    double euc = FUNC5(dx*dx + dy*dy + dz* dz);

    if (euc > 1E-5) {

        FUNC1("D50 roundtrip |err| > (%f) ", euc);
        return 0;
    }

    xe = FUNC3(FUNC0(), cmsD50X_2);
    ye = FUNC3(FUNC0(), cmsD50Y_2);
    ze = FUNC3(FUNC0(), cmsD50Z_2);

    x =  FUNC2(FUNC0(), xe);
    y =  FUNC2(FUNC0(), ye);
    z =  FUNC2(FUNC0(), ze);

    dx = FUNC4(cmsD50X_2 - x);
    dy = FUNC4(cmsD50Y_2 - y);
    dz = FUNC4(cmsD50Z_2 - z);

    euc = FUNC5(dx*dx + dy*dy + dz* dz);

    if (euc > 1E-5) {

        FUNC1("D50 roundtrip |err| > (%f) ", euc);
        return 0;
    }


    return 1;
}