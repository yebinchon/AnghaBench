
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef int cmsUInt16Number ;
struct TYPE_2__ {size_t nOutputChans; scalar_t__ MaxTAC; int * MaxInput; int hRoundTrip; } ;
typedef TYPE_1__ cmsTACestimator ;
typedef scalar_t__ cmsFloat32Number ;
typedef int cmsContext ;


 int TRUE ;
 int cmsDoTransform (int ,int ,int const*,scalar_t__*,int) ;
 int cmsMAXCHANNELS ;
 int cmsUNUSED_PARAMETER (int *) ;

__attribute__((used)) static
int EstimateTAC(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void * Cargo)
{
    cmsTACestimator* bp = (cmsTACestimator*) Cargo;
    cmsFloat32Number RoundTrip[cmsMAXCHANNELS];
    cmsUInt32Number i;
    cmsFloat32Number Sum;



    cmsDoTransform(ContextID, bp->hRoundTrip, In, RoundTrip, 1);


    for (Sum=0, i=0; i < bp ->nOutputChans; i++)
            Sum += RoundTrip[i];


    if (Sum > bp ->MaxTAC) {

            bp ->MaxTAC = Sum;

            for (i=0; i < bp ->nOutputChans; i++) {
                bp ->MaxInput[i] = In[i];
            }
    }

    return TRUE;

    cmsUNUSED_PARAMETER(Out);
}
