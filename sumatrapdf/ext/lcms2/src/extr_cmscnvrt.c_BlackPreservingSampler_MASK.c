#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  double cmsUInt16Number ;
typedef  double cmsFloat64Number ;
typedef  double cmsFloat32Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  double cmsCIELab ;
struct TYPE_2__ {double MaxTAC; double MaxError; int /*<<< orphan*/  hProofOutput; int /*<<< orphan*/  LabK2cmyk; int /*<<< orphan*/  cmyk2Lab; int /*<<< orphan*/  cmyk2cmyk; int /*<<< orphan*/  KTone; } ;
typedef  TYPE_1__ PreserveKPlaneParams ;

/* Variables and functions */
 int TRUE ; 
 double FUNC0 (double) ; 
 double FUNC1 (int /*<<< orphan*/ ,double*,double*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double*,double*,int) ; 
 double FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,double) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,double*,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,double*,double*,double*,int /*<<< orphan*/ ) ; 
 double FUNC6 (double) ; 

__attribute__((used)) static
int FUNC7(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    int i;
    cmsFloat32Number Inf[4], Outf[4];
    cmsFloat32Number LabK[4];
    cmsFloat64Number SumCMY, SumCMYK, Error, Ratio;
    cmsCIELab ColorimetricLab, BlackPreservingLab;
    PreserveKPlaneParams* bp = (PreserveKPlaneParams*) Cargo;

    // Convert from 16 bits to floating point
    for (i=0; i < 4; i++)
        Inf[i] = (cmsFloat32Number) (In[i] / 65535.0);

    // Get the K across Tone curve
    LabK[3] = FUNC3(ContextID, bp ->KTone, Inf[3]);

    // If going across black only, keep black only
    if (In[0] == 0 && In[1] == 0 && In[2] == 0) {

        Out[0] = Out[1] = Out[2] = 0;
        Out[3] = FUNC0(LabK[3] * 65535.0);
        return TRUE;
    }

    // Try the original transform,
    FUNC4(ContextID,  Inf, Outf, bp ->cmyk2cmyk);

    // Store a copy of the floating point result into 16-bit
    for (i=0; i < 4; i++)
            Out[i] = FUNC0(Outf[i] * 65535.0);

    // Maybe K is already ok (mostly on K=0)
    if ( FUNC6(Outf[3] - LabK[3]) < (3.0 / 65535.0) ) {
        return TRUE;
    }

    // K differ, measure and keep Lab measurement for further usage
    // this is done in relative colorimetric intent
    FUNC2(ContextID, bp->hProofOutput, Out, &ColorimetricLab, 1);

    // Is not black only and the transform doesn't keep black.
    // Obtain the Lab of output CMYK. After that we have Lab + K
    FUNC2(ContextID, bp ->cmyk2Lab, Outf, LabK, 1);

    // Obtain the corresponding CMY using reverse interpolation
    // (K is fixed in LabK[3])
    if (!FUNC5(ContextID, LabK, Outf, Outf, bp ->LabK2cmyk)) {

        // Cannot find a suitable value, so use colorimetric xform
        // which is already stored in Out[]
        return TRUE;
    }

    // Make sure to pass through K (which now is fixed)
    Outf[3] = LabK[3];

    // Apply TAC if needed
    SumCMY   = Outf[0]  + Outf[1] + Outf[2];
    SumCMYK  = SumCMY + Outf[3];

    if (SumCMYK > bp ->MaxTAC) {

        Ratio = 1 - ((SumCMYK - bp->MaxTAC) / SumCMY);
        if (Ratio < 0)
            Ratio = 0;
    }
    else
       Ratio = 1.0;

    Out[0] = FUNC0(Outf[0] * Ratio * 65535.0);     // C
    Out[1] = FUNC0(Outf[1] * Ratio * 65535.0);     // M
    Out[2] = FUNC0(Outf[2] * Ratio * 65535.0);     // Y
    Out[3] = FUNC0(Outf[3] * 65535.0);

    // Estimate the error (this goes 16 bits to Lab DBL)
    FUNC2(ContextID, bp->hProofOutput, Out, &BlackPreservingLab, 1);
    Error = FUNC1(ContextID, &ColorimetricLab, &BlackPreservingLab);
    if (Error > bp -> MaxError)
        bp->MaxError = Error;

    return TRUE;
}