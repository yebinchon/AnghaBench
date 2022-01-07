
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int cmsVEC3 ;
struct TYPE_11__ {int alpha; int theta; double r; } ;
typedef TYPE_2__ cmsSpherical ;
typedef int cmsLine ;
struct TYPE_12__ {TYPE_2__ p; } ;
typedef TYPE_3__ cmsGDBPoint ;
struct TYPE_13__ {TYPE_1__** Gamut; } ;
typedef TYPE_4__ cmsGDB ;
typedef int cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_10__ {scalar_t__ Type; TYPE_2__ p; } ;


 int ClosestLineToLine (int ,int *,int *,int *) ;
 int FindNearSectors (TYPE_4__*,int,int,TYPE_3__**) ;
 scalar_t__ GP_EMPTY ;
 scalar_t__ GP_MODELED ;
 int LineOf2Points (int ,int *,int *,int *) ;
 int NSTEPS ;
 int SECTORS ;
 int TRUE ;
 int ToCartesian (int *,TYPE_2__*) ;
 int ToSpherical (TYPE_2__*,int *) ;
 int _cmsVEC3init (int ,int *,double,int ,int ) ;

__attribute__((used)) static
cmsBool InterpolateMissingSector(cmsContext ContextID, cmsGDB* gbd, int alpha, int theta)
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


    if (gbd ->Gamut[theta][alpha].Type != GP_EMPTY) return TRUE;


    nCloseSectors = FindNearSectors(gbd, alpha, theta, Close);



    sp.alpha = (cmsFloat64Number) ((alpha + 0.5) * 360.0) / (SECTORS);
    sp.theta = (cmsFloat64Number) ((theta + 0.5) * 180.0) / (SECTORS);
    sp.r = 50.0;


    ToCartesian(&Lab, &sp);


    _cmsVEC3init(ContextID, &Centre, 50.0, 0, 0);
    LineOf2Points(ContextID, &ray, &Lab, &Centre);


    closel.r = 0.0;
    closel.alpha = 0;
    closel.theta = 0;

    for (k=0; k < nCloseSectors; k++) {

        for(m = k+1; m < nCloseSectors; m++) {

            cmsVEC3 temp, a1, a2;


            ToCartesian(&a1, &Close[k]->p);
            ToCartesian(&a2, &Close[m]->p);

            LineOf2Points(ContextID, &edge, &a1, &a2);


            ClosestLineToLine(ContextID, &temp, &ray, &edge);


            ToSpherical(&templ, &temp);


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
