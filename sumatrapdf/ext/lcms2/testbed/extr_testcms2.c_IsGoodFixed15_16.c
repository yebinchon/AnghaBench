
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsFloat64Number ;
typedef int cmsBool ;


 int FIXED_PRECISION_15_16 ;
 int IsGoodVal (char const*,int ,int ,int ) ;

cmsBool IsGoodFixed15_16(const char *title, cmsFloat64Number in, cmsFloat64Number out)
{
    return IsGoodVal(title, in, out, FIXED_PRECISION_15_16);
}
