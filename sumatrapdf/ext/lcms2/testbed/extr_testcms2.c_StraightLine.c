
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef double cmsFloat32Number ;



__attribute__((used)) static cmsFloat32Number StraightLine( cmsFloat32Number x)
{
    return (cmsFloat32Number) (0.1 + 0.9 * x);
}
