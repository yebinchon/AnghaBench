
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
cmsInt32Number CheckFloatlinearXFORM(cmsHTRANSFORM xform, cmsInt32Number nChan)
{
    cmsInt32Number i, j;
    cmsFloat32Number In[cmsMAXCHANNELS], Out[cmsMAXCHANNELS];

    for (j=0; j < 0xFFFF; j++) {

        for (i=0; i < nChan; i++) In[i] = (cmsFloat32Number) (j / 65535.0);;

        cmsDoTransform(DbgThread(), xform, In, Out, 1);

        for (i=0; i < nChan; i++) {


            if (!IsGoodFixed15_16("linear xform cmsFloat32Number", Out[i], (cmsFloat32Number) (j / 65535.0)))
                return 0;
        }
    }

    return 1;
}
