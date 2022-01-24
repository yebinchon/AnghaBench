#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsCIExyY ;
struct TYPE_10__ {double X; double Y; double Z; } ;
typedef  TYPE_1__ cmsCIEXYZ ;
struct TYPE_11__ {double L; double a; double b; } ;
typedef  TYPE_2__ cmsCIELab ;
struct TYPE_12__ {double L; double C; double h; } ;
typedef  TYPE_3__ cmsCIELCh ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ lShowLCh ; 
 scalar_t__ lShowLab ; 
 scalar_t__ lShowXYZ ; 
 int /*<<< orphan*/  FUNC3 (char*,double,...) ; 
 double FUNC4 (int) ; 

__attribute__((used)) static
void FUNC5(cmsCIEXYZ* WtPt)
{
       cmsCIELab Lab;
       cmsCIELCh LCh;
       cmsCIExyY xyY;


       FUNC1(NULL, &Lab, WtPt);
       FUNC0(&LCh, &Lab);
       FUNC2(&xyY, WtPt);


       if (lShowXYZ) FUNC3("XYZ=(%3.1f, %3.1f, %3.1f)\n", WtPt->X, WtPt->Y, WtPt->Z);
       if (lShowLab) FUNC3("Lab=(%3.3f, %3.3f, %3.3f)\n", Lab.L, Lab.a, Lab.b);
       if (lShowLCh) FUNC3("LCh=(%3.3f, %3.3f, %3.3f)\n", LCh.L, LCh.C, LCh.h);
       {
              double Ssens = (LCh.C * 100.0 )/ FUNC4(LCh.C*LCh.C + LCh.L * LCh.L) ;
              FUNC3("Sens = %f\n", Ssens);
       }

}