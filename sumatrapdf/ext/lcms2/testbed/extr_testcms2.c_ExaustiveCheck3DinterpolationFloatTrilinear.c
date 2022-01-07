
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int (* LerpFloat ) (int ,double*,double*,TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ Interpolation; } ;
typedef TYPE_2__ cmsInterpParams ;
typedef int cmsInt32Number ;
typedef double cmsFloat32Number ;


 int CMS_LERP_FLAGS_FLOAT ;
 int CMS_LERP_FLAGS_TRILINEAR ;
 int DbgThread () ;
 int IsGoodFixed15_16 (char*,double,double) ;
 double MaxErr ;
 TYPE_2__* _cmsComputeInterpParams (int ,int,int,int,double*,int) ;
 int _cmsFreeInterpParams (int ,TYPE_2__*) ;
 int printf (char*,double) ;
 int stub1 (int ,double*,double*,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number ExaustiveCheck3DinterpolationFloatTrilinear(void)
{
    cmsInterpParams* p;
    cmsInt32Number r, g, b;
    cmsFloat32Number In[3], Out[3];
    cmsFloat32Number FloatTable[] = {

        0, 0, 0,
        0, 0, .25,

        0, .5, 0,
        0, .5, .25,

        1, 0, 0,
        1, 0, .25,

        1, .5, 0,
        1, .5, .25

    };

    p = _cmsComputeInterpParams(DbgThread(), 2, 3, 3, FloatTable, CMS_LERP_FLAGS_FLOAT|CMS_LERP_FLAGS_TRILINEAR);

    MaxErr = 0.0;
    for (r=0; r < 0xff; r++)
        for (g=0; g < 0xff; g++)
            for (b=0; b < 0xff; b++)
            {

                In[0] = (cmsFloat32Number) r / 255.0F;
                In[1] = (cmsFloat32Number) g / 255.0F;
                In[2] = (cmsFloat32Number) b / 255.0F;


                p ->Interpolation.LerpFloat(DbgThread(), In, Out, p);

                if (!IsGoodFixed15_16("Channel 1", Out[0], In[0])) goto Error;
                if (!IsGoodFixed15_16("Channel 2", Out[1], (cmsFloat32Number) In[1] / 2.F)) goto Error;
                if (!IsGoodFixed15_16("Channel 3", Out[2], (cmsFloat32Number) In[2] / 4.F)) goto Error;
            }

    if (MaxErr > 0) printf("|Err|<%lf ", MaxErr);
    _cmsFreeInterpParams(DbgThread(), p);
    return 1;

Error:
    _cmsFreeInterpParams(DbgThread(), p);
    return 0;

}
