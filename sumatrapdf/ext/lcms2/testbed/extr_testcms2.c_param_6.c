
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsFloat64Number ;
typedef int const cmsFloat32Number ;


 int const pow (int,int const) ;

__attribute__((used)) static
cmsFloat32Number param_6(cmsFloat32Number x, const cmsFloat64Number Params[])
{
    cmsFloat64Number e, Val;

    e = Params[1]*x + Params[2];
    if (e > 0)
        Val = pow(e, Params[0]) + Params[3];
    else
        Val = 0;

    return (cmsFloat32Number) Val;
}
