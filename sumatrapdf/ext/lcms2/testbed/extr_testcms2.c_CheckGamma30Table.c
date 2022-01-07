
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int CheckGammaFloatTable (double) ;

__attribute__((used)) static cmsInt32Number CheckGamma30Table(void)
{
    return CheckGammaFloatTable(3.0);
}
