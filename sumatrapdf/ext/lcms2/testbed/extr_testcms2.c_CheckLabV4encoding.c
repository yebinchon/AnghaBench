
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsUInt16Number ;
typedef int cmsInt32Number ;
typedef int cmsCIELab ;


 int DbgThread () ;
 int cmsFloat2LabEncoded (int ,int*,int *) ;
 int cmsLabEncoded2Float (int ,int *,int*) ;

__attribute__((used)) static
cmsInt32Number CheckLabV4encoding(void)
{
    cmsInt32Number n2, i, j;
    cmsUInt16Number Inw[3], aw[3];
    cmsCIELab Lab;

    n2=0;

    for (j=0; j < 65535; j++) {

        Inw[0] = Inw[1] = Inw[2] = (cmsUInt16Number) j;

        cmsLabEncoded2Float(DbgThread(), &Lab, Inw);
        cmsFloat2LabEncoded(DbgThread(), aw, &Lab);

        for (i=0; i < 3; i++) {

        if (aw[i] != j) {
            n2++;
        }
        }

    }

    return (n2 == 0);
}
