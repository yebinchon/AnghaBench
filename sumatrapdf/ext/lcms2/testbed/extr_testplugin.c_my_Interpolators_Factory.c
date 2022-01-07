
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int cmsUInt32Number ;
struct TYPE_4__ {int Lerp16; int LerpFloat; } ;
typedef TYPE_1__ cmsInterpFunction ;
typedef int cmsContext ;
typedef int cmsBool ;
typedef int Interpolation ;


 int CMS_LERP_FLAGS_FLOAT ;
 int Fake1Dfloat ;
 int Fake3D16 ;
 int memset (TYPE_1__*,int ,int) ;

cmsInterpFunction my_Interpolators_Factory(cmsContext ContextID, cmsUInt32Number nInputChannels,
                                           cmsUInt32Number nOutputChannels,
                                           cmsUInt32Number dwFlags)
{
    cmsInterpFunction Interpolation;
    cmsBool IsFloat = (dwFlags & CMS_LERP_FLAGS_FLOAT);


    memset(&Interpolation, 0, sizeof(Interpolation));


    if (nInputChannels == 1 && nOutputChannels == 1 && IsFloat) {

        Interpolation.LerpFloat = Fake1Dfloat;
    }
    else
    if (nInputChannels == 3 && nOutputChannels == 3 && !IsFloat) {


        Interpolation.Lerp16 = Fake3D16;
    }


    return Interpolation;
}
