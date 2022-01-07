
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsFloat64Number ;
typedef int cmsBool ;


 float fabs (scalar_t__) ;

__attribute__((used)) static
cmsBool CloseEnoughFloat(cmsFloat64Number a, cmsFloat64Number b)
{
       return fabs(b - a) < 0.00001f;
}
