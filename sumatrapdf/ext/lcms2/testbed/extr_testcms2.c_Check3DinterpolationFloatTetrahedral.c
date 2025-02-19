
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
 int DbgThread () ;
 int IsGoodFixed15_16 (char*,double,double) ;
 double MaxErr ;
 TYPE_2__* _cmsComputeInterpParams (int ,int,int,int,double*,int ) ;
 int _cmsFreeInterpParams (int ,TYPE_2__*) ;
 int printf (char*,double) ;
 int stub1 (int ,double*,double*,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number Check3DinterpolationFloatTetrahedral(void)
{
    cmsInterpParams* p;
    cmsInt32Number i;
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

    p = _cmsComputeInterpParams(DbgThread(), 2, 3, 3, FloatTable, CMS_LERP_FLAGS_FLOAT);


    MaxErr = 0.0;
     for (i=0; i < 0xffff; i++) {

       In[0] = In[1] = In[2] = (cmsFloat32Number) ( (cmsFloat32Number) i / 65535.0F);

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
