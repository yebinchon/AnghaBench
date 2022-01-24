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
typedef  int /*<<< orphan*/  cmsUInt32Number ;
typedef  int /*<<< orphan*/ * cmsHPROFILE ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 scalar_t__ BlackPointCompensation ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  Intent ; 
 int /*<<< orphan*/  NumOfGridPoints ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OutFile ; 
 int PrecalcMode ; 
 scalar_t__ Undecorated ; 
 int /*<<< orphan*/  cOutProf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmsFLAGS_BLACKPOINTCOMPENSATION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmsFLAGS_HIGHRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_LOWRESPRECALC ; 
 int /*<<< orphan*/  cmsFLAGS_NODEFAULTRESOURCEDEF ; 
 size_t FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__ FUNC7 (size_t) ; 

__attribute__((used)) static
void FUNC8(cmsContext ContextID)
{
	cmsHPROFILE hProfile = FUNC1(ContextID, cOutProf);
	size_t n;
	char* Buffer;
    cmsUInt32Number dwFlags = 0;

	if (hProfile == NULL) return;

    if (BlackPointCompensation) dwFlags |= cmsFLAGS_BLACKPOINTCOMPENSATION;
    if (Undecorated)            dwFlags |= cmsFLAGS_NODEFAULTRESOURCEDEF;

    switch (PrecalcMode) {

	    case 0: dwFlags |= cmsFLAGS_LOWRESPRECALC; break;
		case 2: dwFlags |= cmsFLAGS_HIGHRESPRECALC; break;
		case 1:
            if (NumOfGridPoints > 0)
                dwFlags |= FUNC3(NumOfGridPoints);
            break;

		default: FUNC0("ERROR: Unknown precalculation mode '%d'", PrecalcMode);
	 }

	n = FUNC4(ContextID, hProfile, Intent, dwFlags, NULL, 0);
	if (n == 0) return;

	Buffer = (char*) FUNC7(n + 1);
	if (Buffer == NULL) return;
        FUNC4(ContextID, hProfile, Intent, dwFlags, Buffer, (cmsUInt32Number) n);
	Buffer[n] = 0;

	FUNC5(OutFile, "%s", Buffer);
	FUNC6(Buffer);
	FUNC2(ContextID, hProfile);
}