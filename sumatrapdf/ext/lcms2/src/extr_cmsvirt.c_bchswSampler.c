
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsUInt16Number ;
typedef int cmsContext ;
typedef int cmsCIEXYZ ;
typedef int cmsCIELab ;
struct TYPE_5__ {int L; scalar_t__ h; scalar_t__ C; } ;
typedef TYPE_1__ cmsCIELCh ;
struct TYPE_6__ {int Contrast; int Brightness; int WPdest; int WPsrc; scalar_t__ lAdjustWP; scalar_t__ Hue; scalar_t__ Saturation; } ;
typedef TYPE_2__* LPBCHSWADJUSTS ;


 int TRUE ;
 int cmsFloat2LabEncoded (int ,int *,int *) ;
 int cmsLCh2Lab (int ,int *,TYPE_1__*) ;
 int cmsLab2LCh (int ,TYPE_1__*,int *) ;
 int cmsLab2XYZ (int ,int *,int *,int *) ;
 int cmsLabEncoded2Float (int ,int *,int const*) ;
 int cmsXYZ2Lab (int ,int *,int *,int *) ;

__attribute__((used)) static
int bchswSampler(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    cmsCIELab LabIn, LabOut;
    cmsCIELCh LChIn, LChOut;
    cmsCIEXYZ XYZ;
    LPBCHSWADJUSTS bchsw = (LPBCHSWADJUSTS) Cargo;


    cmsLabEncoded2Float(ContextID, &LabIn, In);


    cmsLab2LCh(ContextID, &LChIn, &LabIn);



    LChOut.L = LChIn.L * bchsw ->Contrast + bchsw ->Brightness;
    LChOut.C = LChIn.C + bchsw -> Saturation;
    LChOut.h = LChIn.h + bchsw -> Hue;


    cmsLCh2Lab(ContextID, &LabOut, &LChOut);


    if (bchsw->lAdjustWP) {
           cmsLab2XYZ(ContextID, &bchsw->WPsrc, &XYZ, &LabOut);
           cmsXYZ2Lab(ContextID, &bchsw->WPdest, &LabOut, &XYZ);
    }



    cmsFloat2LabEncoded(ContextID, Out, &LabOut);

    return TRUE;
}
