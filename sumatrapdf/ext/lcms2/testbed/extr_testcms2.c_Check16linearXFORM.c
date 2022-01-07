
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsHTRANSFORM ;


 int DbgThread () ;
 int Fail (char*,int) ;
 int abs (scalar_t__) ;
 int cmsDoTransform (int ,int ,scalar_t__*,scalar_t__*,int) ;
 int cmsMAXCHANNELS ;

__attribute__((used)) static
cmsInt32Number Check16linearXFORM(cmsHTRANSFORM xform, cmsInt32Number nChan)
{
    cmsInt32Number n2, i, j;
    cmsUInt16Number Inw[cmsMAXCHANNELS], Outw[cmsMAXCHANNELS];

    n2=0;
    for (j=0; j < 0xFFFF; j++) {

        for (i=0; i < nChan; i++) Inw[i] = (cmsUInt16Number) j;

        cmsDoTransform(DbgThread(), xform, Inw, Outw, 1);

        for (i=0; i < nChan; i++) {

           cmsInt32Number dif = abs(Outw[i] - j);
           if (dif > n2) n2 = dif;

        }



    if (n2 > 0x200) {

        Fail("Differences too big (%x)", n2);
        return 0;
    }
    }

    return 1;
}
