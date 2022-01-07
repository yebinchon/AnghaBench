
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;
typedef scalar_t__ cmsFloat32Number ;


 int DbgThread () ;
 int IsGoodFixed15_16 (char*,scalar_t__,scalar_t__) ;
 int cmsDoTransform (int ,int ,scalar_t__*,scalar_t__*,int) ;
 int cmsMAXCHANNELS ;

__attribute__((used)) static
cmsInt32Number CompareFloatXFORM(cmsHTRANSFORM xform1, cmsHTRANSFORM xform2, cmsInt32Number nChan)
{
    cmsInt32Number i, j;
    cmsFloat32Number In[cmsMAXCHANNELS], Out1[cmsMAXCHANNELS], Out2[cmsMAXCHANNELS];

    for (j=0; j < 0xFFFF; j++) {

        for (i=0; i < nChan; i++) In[i] = (cmsFloat32Number) (j / 65535.0);;

        cmsDoTransform(DbgThread(), xform1, In, Out1, 1);
        cmsDoTransform(DbgThread(), xform2, In, Out2, 1);

        for (i=0; i < nChan; i++) {


            if (!IsGoodFixed15_16("linear xform cmsFloat32Number", Out1[i], Out2[i]))
                return 0;
        }

    }

    return 1;
}
