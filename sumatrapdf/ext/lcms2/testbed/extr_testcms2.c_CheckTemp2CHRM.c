
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;
typedef int cmsFloat64Number ;
typedef int cmsCIExyY ;


 int DbgThread () ;
 int cmsTempFromWhitePoint (int ,int*,int *) ;
 int cmsWhitePointFromTemp (int ,int *,int) ;
 int fabs (int) ;

__attribute__((used)) static
cmsInt32Number CheckTemp2CHRM(void)
{
    cmsInt32Number j;
    cmsFloat64Number d, v, Max = 0;
    cmsCIExyY White;

    for (j=4000; j < 25000; j++) {

        cmsWhitePointFromTemp(DbgThread(), &White, j);
        if (!cmsTempFromWhitePoint(DbgThread(), &v, &White)) return 0;

        d = fabs(v - j);
        if (d > Max) Max = d;
    }


    return (Max < 100);
}
