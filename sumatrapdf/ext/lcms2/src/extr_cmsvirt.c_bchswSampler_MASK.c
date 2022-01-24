#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsCIEXYZ ;
typedef  int /*<<< orphan*/  cmsCIELab ;
struct TYPE_5__ {int L; scalar_t__ h; scalar_t__ C; } ;
typedef  TYPE_1__ cmsCIELCh ;
struct TYPE_6__ {int Contrast; int Brightness; int /*<<< orphan*/  WPdest; int /*<<< orphan*/  WPsrc; scalar_t__ lAdjustWP; scalar_t__ Hue; scalar_t__ Saturation; } ;
typedef  TYPE_2__* LPBCHSWADJUSTS ;

/* Variables and functions */
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static
int FUNC6(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    cmsCIELab LabIn, LabOut;
    cmsCIELCh LChIn, LChOut;
    cmsCIEXYZ XYZ;
    LPBCHSWADJUSTS bchsw = (LPBCHSWADJUSTS) Cargo;


    FUNC4(ContextID, &LabIn, In);


    FUNC2(ContextID, &LChIn, &LabIn);

    // Do some adjusts on LCh

    LChOut.L = LChIn.L * bchsw ->Contrast + bchsw ->Brightness;
    LChOut.C = LChIn.C + bchsw -> Saturation;
    LChOut.h = LChIn.h + bchsw -> Hue;


    FUNC1(ContextID, &LabOut, &LChOut);

    // Move white point in Lab
    if (bchsw->lAdjustWP) {
           FUNC3(ContextID, &bchsw->WPsrc, &XYZ, &LabOut);
           FUNC5(ContextID, &bchsw->WPdest, &LabOut, &XYZ);
    }

    // Back to encoded

    FUNC0(ContextID, Out, &LabOut);

    return TRUE;
}