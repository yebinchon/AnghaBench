#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cmsVEC3 ;
struct TYPE_11__ {int alpha; int theta; double r; } ;
typedef  TYPE_2__ cmsSpherical ;
typedef  int /*<<< orphan*/  cmsLine ;
struct TYPE_12__ {TYPE_2__ p; } ;
typedef  TYPE_3__ cmsGDBPoint ;
struct TYPE_13__ {TYPE_1__** Gamut; } ;
typedef  TYPE_4__ cmsGDB ;
typedef  int cmsFloat64Number ;
typedef  int /*<<< orphan*/  cmsContext ;
typedef  int /*<<< orphan*/  cmsBool ;
struct TYPE_10__ {scalar_t__ Type; TYPE_2__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_4__*,int,int,TYPE_3__**) ; 
 scalar_t__ GP_EMPTY ; 
 scalar_t__ GP_MODELED ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NSTEPS ; 
 int SECTORS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,double,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
cmsBool FUNC6(cmsContext ContextID, cmsGDB* gbd, int alpha, int theta)
{
    cmsSpherical sp;
    cmsVEC3 Lab;
    cmsVEC3 Centre;
    cmsLine ray;
    int nCloseSectors;
    cmsGDBPoint* Close[NSTEPS + 1];
    cmsSpherical closel, templ;
    cmsLine edge;
    int k, m;

    // Is that point already specified?
    if (gbd ->Gamut[theta][alpha].Type != GP_EMPTY) return TRUE;

    // Fill close points
    nCloseSectors = FUNC1(gbd, alpha, theta, Close);


    // Find a central point on the sector
    sp.alpha = (cmsFloat64Number) ((alpha + 0.5) * 360.0) / (SECTORS);
    sp.theta = (cmsFloat64Number) ((theta + 0.5) * 180.0) / (SECTORS);
    sp.r     = 50.0;

    // Convert to Cartesian
    FUNC3(&Lab, &sp);

    // Create a ray line from centre to this point
    FUNC5(ContextID, &Centre, 50.0, 0, 0);
    FUNC2(ContextID, &ray, &Lab, &Centre);

    // For all close sectors
    closel.r = 0.0;
    closel.alpha = 0;
    closel.theta = 0;

    for (k=0; k < nCloseSectors; k++) {

        for(m = k+1; m < nCloseSectors; m++) {

            cmsVEC3 temp, a1, a2;

            // A line from sector to sector
            FUNC3(&a1, &Close[k]->p);
            FUNC3(&a2, &Close[m]->p);

            FUNC2(ContextID, &edge, &a1, &a2);

            // Find a line
            FUNC0(ContextID, &temp, &ray, &edge);

            // Convert to spherical
            FUNC4(&templ, &temp);


            if ( templ.r > closel.r &&
                 templ.theta >= (theta*180.0/SECTORS) &&
                 templ.theta <= ((theta+1)*180.0/SECTORS) &&
                 templ.alpha >= (alpha*360.0/SECTORS) &&
                 templ.alpha <= ((alpha+1)*360.0/SECTORS)) {

                closel = templ;
            }
        }
    }

    gbd ->Gamut[theta][alpha].p = closel;
    gbd ->Gamut[theta][alpha].Type = GP_MODELED;

    return TRUE;

}