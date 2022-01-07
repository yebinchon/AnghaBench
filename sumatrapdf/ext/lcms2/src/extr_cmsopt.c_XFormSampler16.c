
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t cmsUInt32Number ;
typedef double cmsUInt16Number ;
struct TYPE_3__ {int InputChannels; int OutputChannels; } ;
typedef TYPE_1__ cmsPipeline ;
typedef int cmsInt32Number ;
typedef double cmsFloat32Number ;
typedef int cmsContext ;


 int TRUE ;
 int _cmsAssert (int) ;
 double _cmsQuickSaturateWord (double) ;
 int cmsMAXCHANNELS ;
 int cmsPipelineEvalFloat (int ,double*,double*,TYPE_1__*) ;

__attribute__((used)) static
cmsInt32Number XFormSampler16(cmsContext ContextID, register const cmsUInt16Number In[], register cmsUInt16Number Out[], register void* Cargo)
{
    cmsPipeline* Lut = (cmsPipeline*) Cargo;
    cmsFloat32Number InFloat[cmsMAXCHANNELS], OutFloat[cmsMAXCHANNELS];
    cmsUInt32Number i;

    _cmsAssert(Lut -> InputChannels < cmsMAXCHANNELS);
    _cmsAssert(Lut -> OutputChannels < cmsMAXCHANNELS);


    for (i=0; i < Lut ->InputChannels; i++)
        InFloat[i] = (cmsFloat32Number) (In[i] / 65535.0);


    cmsPipelineEvalFloat(ContextID, InFloat, OutFloat, Lut);


    for (i=0; i < Lut ->OutputChannels; i++)
        Out[i] = _cmsQuickSaturateWord(OutFloat[i] * 65535.0);


    return TRUE;
}
