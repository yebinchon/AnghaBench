
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef double cmsUInt16Number ;
typedef double cmsFloat64Number ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;
typedef double cmsCIELab ;
struct TYPE_2__ {double MaxTAC; double MaxError; int hProofOutput; int LabK2cmyk; int cmyk2Lab; int cmyk2cmyk; int KTone; } ;
typedef TYPE_1__ PreserveKPlaneParams ;


 int TRUE ;
 double _cmsQuickSaturateWord (double) ;
 double cmsDeltaE (int ,double*,double*) ;
 int cmsDoTransform (int ,int ,double*,double*,int) ;
 double cmsEvalToneCurveFloat (int ,int ,double) ;
 int cmsPipelineEvalFloat (int ,double*,double*,int ) ;
 int cmsPipelineEvalReverseFloat (int ,double*,double*,double*,int ) ;
 double fabs (double) ;

__attribute__((used)) static
int BlackPreservingSampler(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    int i;
    cmsFloat32Number Inf[4], Outf[4];
    cmsFloat32Number LabK[4];
    cmsFloat64Number SumCMY, SumCMYK, Error, Ratio;
    cmsCIELab ColorimetricLab, BlackPreservingLab;
    PreserveKPlaneParams* bp = (PreserveKPlaneParams*) Cargo;


    for (i=0; i < 4; i++)
        Inf[i] = (cmsFloat32Number) (In[i] / 65535.0);


    LabK[3] = cmsEvalToneCurveFloat(ContextID, bp ->KTone, Inf[3]);


    if (In[0] == 0 && In[1] == 0 && In[2] == 0) {

        Out[0] = Out[1] = Out[2] = 0;
        Out[3] = _cmsQuickSaturateWord(LabK[3] * 65535.0);
        return TRUE;
    }


    cmsPipelineEvalFloat(ContextID, Inf, Outf, bp ->cmyk2cmyk);


    for (i=0; i < 4; i++)
            Out[i] = _cmsQuickSaturateWord(Outf[i] * 65535.0);


    if ( fabs(Outf[3] - LabK[3]) < (3.0 / 65535.0) ) {
        return TRUE;
    }



    cmsDoTransform(ContextID, bp->hProofOutput, Out, &ColorimetricLab, 1);



    cmsDoTransform(ContextID, bp ->cmyk2Lab, Outf, LabK, 1);



    if (!cmsPipelineEvalReverseFloat(ContextID, LabK, Outf, Outf, bp ->LabK2cmyk)) {



        return TRUE;
    }


    Outf[3] = LabK[3];


    SumCMY = Outf[0] + Outf[1] + Outf[2];
    SumCMYK = SumCMY + Outf[3];

    if (SumCMYK > bp ->MaxTAC) {

        Ratio = 1 - ((SumCMYK - bp->MaxTAC) / SumCMY);
        if (Ratio < 0)
            Ratio = 0;
    }
    else
       Ratio = 1.0;

    Out[0] = _cmsQuickSaturateWord(Outf[0] * Ratio * 65535.0);
    Out[1] = _cmsQuickSaturateWord(Outf[1] * Ratio * 65535.0);
    Out[2] = _cmsQuickSaturateWord(Outf[2] * Ratio * 65535.0);
    Out[3] = _cmsQuickSaturateWord(Outf[3] * 65535.0);


    cmsDoTransform(ContextID, bp->hProofOutput, Out, &BlackPreservingLab, 1);
    Error = cmsDeltaE(ContextID, &ColorimetricLab, &BlackPreservingLab);
    if (Error > bp -> MaxError)
        bp->MaxError = Error;

    return TRUE;
}
