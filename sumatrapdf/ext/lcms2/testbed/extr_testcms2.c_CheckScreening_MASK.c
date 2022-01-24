#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsTagSignature ;
struct TYPE_5__ {int nChannels; TYPE_1__* Channels; int /*<<< orphan*/  Flag; } ;
typedef  TYPE_2__ cmsScreening ;
typedef  int cmsInt32Number ;
typedef  int /*<<< orphan*/  cmsHPROFILE ;
struct TYPE_4__ {double Frequency; double ScreenAngle; int /*<<< orphan*/  SpotShape; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,double,double) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsSPOT_ELLIPSE ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 

__attribute__((used)) static
cmsInt32Number FUNC4(cmsInt32Number Pass,  cmsHPROFILE hProfile, cmsTagSignature tag)
{
    cmsScreening *Pt, sc;
    cmsInt32Number rc;

    switch (Pass) {

        case 1:

            sc.Flag = 0;
            sc.nChannels = 1;
            sc.Channels[0].Frequency = 2.0;
            sc.Channels[0].ScreenAngle = 3.0;
            sc.Channels[0].SpotShape = cmsSPOT_ELLIPSE;

            rc = FUNC3(FUNC0(), hProfile, tag, &sc);
            return rc;


        case 2:
            Pt = (cmsScreening *) FUNC2(FUNC0(), hProfile, tag);
            if (Pt == NULL) return 0;

            if (Pt ->nChannels != 1) return 0;
            if (Pt ->Flag      != 0) return 0;
            if (!FUNC1("Freq", Pt ->Channels[0].Frequency, 2.0)) return 0;
            if (!FUNC1("Angle", Pt ->Channels[0].ScreenAngle, 3.0)) return 0;
            if (Pt ->Channels[0].SpotShape != cmsSPOT_ELLIPSE) return 0;
            return 1;

        default:
            return 0;
    }
}