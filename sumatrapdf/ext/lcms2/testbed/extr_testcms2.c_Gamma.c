
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsFloat64Number ;
typedef int cmsFloat32Number ;


 int pow (int ,int const) ;

__attribute__((used)) static
cmsFloat32Number Gamma(cmsFloat32Number x, const cmsFloat64Number Params[])
{
    return (cmsFloat32Number) pow(x, Params[0]);
}
