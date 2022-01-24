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

/* Variables and functions */
 int bval ; 
 int /*<<< orphan*/  cylinder ; 
 int /*<<< orphan*/  cylquality ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (double,double,double,double) ; 
 int /*<<< orphan*/  FUNC4 (double,int,double) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,float,float,int,int /*<<< orphan*/ ,int) ; 
 int gval ; 
 float rotfactor ; 
 int rval ; 
 float wfactor ; 

void FUNC6(int n, float rota, float width)
{
    FUNC2();
    FUNC0(rval/n, gval/n, bval/n);
    FUNC3(rota, 0.0, 1.0, 0.0);
    FUNC5(cylinder, width, width * wfactor, n * 0.5, cylquality, 1);
    FUNC4(0.0, 0.0, -n * 0.5);
    FUNC5(cylinder, width * wfactor, width, n * 0.5, cylquality, 1);
    if(n > 1)
    {
        float r = rota * rotfactor;
        FUNC3(90.0, 1.0, 0.0, 0.0);
        FUNC6(n - 1,  r, width * wfactor);
        FUNC4(0.0, n, 0.0);
        FUNC6(n - 1, -r, width * wfactor);
    }
    FUNC1();
}