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
typedef  int cmsS1Fixed14Number ;
typedef  double cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double) ; 

__attribute__((used)) static
void FUNC2(cmsContext ContextID, cmsS1Fixed14Number* Table, cmsToneCurve* Curve)
{
    int i;
    cmsFloat32Number R, y;

    for (i=0; i < 256; i++) {

        R   = (cmsFloat32Number) (i / 255.0);
        y   = FUNC1(ContextID, Curve, R);

        if (y < 131072.0)
            Table[i] = FUNC0(y);
        else
            Table[i] = 0x7fffffff;
    }
}