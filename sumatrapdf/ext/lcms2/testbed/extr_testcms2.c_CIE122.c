
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsFloat64Number ;
typedef int const cmsFloat32Number ;


 int pow (int,int const) ;

__attribute__((used)) static
cmsFloat32Number CIE122(cmsFloat32Number x, const cmsFloat64Number Params[])

{
    cmsFloat64Number e, Val;

    if (x >= -Params[2] / Params[1]) {

        e = Params[1]*x + Params[2];

        if (e > 0)
            Val = pow(e, Params[0]);
        else
            Val = 0;
    }
    else
        Val = 0;

    return (cmsFloat32Number) Val;
}
