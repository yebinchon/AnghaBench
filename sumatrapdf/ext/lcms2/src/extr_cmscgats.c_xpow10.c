
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsFloat64Number ;


 int pow (int,int ) ;

__attribute__((used)) static
cmsFloat64Number xpow10(int n)
{
    return pow(10, (cmsFloat64Number) n);
}
