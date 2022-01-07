
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmsUInt16Number ;
struct TYPE_6__ {int (* Lerp16 ) (int ,int*,int*,TYPE_2__*) ;} ;
struct TYPE_7__ {TYPE_1__ Interpolation; } ;
typedef TYPE_2__ cmsInterpParams ;
typedef int cmsInt32Number ;


 int CMS_LERP_FLAGS_TRILINEAR ;
 int DbgThread () ;
 int IsGoodWord (char*,int,int) ;
 TYPE_2__* _cmsComputeInterpParams (int ,int,int,int,int*,int ) ;
 int _cmsFreeInterpParams (int ,TYPE_2__*) ;
 int stub1 (int ,int*,int*,TYPE_2__*) ;

__attribute__((used)) static
cmsInt32Number ExhaustiveCheck3DinterpolationTrilinear16(void)
{
    cmsInterpParams* p;
    cmsInt32Number r, g, b;
    cmsUInt16Number In[3], Out[3];
    cmsUInt16Number Table[] = {

        0, 0, 0,
        0, 0, 0xffff,

        0, 0xffff, 0,
        0, 0xffff, 0xffff,

        0xffff, 0, 0,
        0xffff, 0, 0xffff,

        0xffff, 0xffff, 0,
        0xffff, 0xffff, 0xffff
    };

    p = _cmsComputeInterpParams(DbgThread(), 2, 3, 3, Table, CMS_LERP_FLAGS_TRILINEAR);

    for (r=0; r < 0xff; r++)
        for (g=0; g < 0xff; g++)
            for (b=0; b < 0xff; b++)
        {
            In[0] = (cmsUInt16Number) r ;
            In[1] = (cmsUInt16Number)g ;
            In[2] = (cmsUInt16Number)b ;


        p ->Interpolation.Lerp16(DbgThread(), In, Out, p);

       if (!IsGoodWord("Channel 1", Out[0], In[0])) goto Error;
       if (!IsGoodWord("Channel 2", Out[1], In[1])) goto Error;
       if (!IsGoodWord("Channel 3", Out[2], In[2])) goto Error;
     }


    _cmsFreeInterpParams(DbgThread(), p);
    return 1;

Error:
    _cmsFreeInterpParams(DbgThread(), p);
    return 0;
}
