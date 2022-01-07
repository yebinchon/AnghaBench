
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int CheckCMYK (int ,char*,char*) ;
 int INTENT_RELATIVE_COLORIMETRIC ;

__attribute__((used)) static
cmsInt32Number CheckCMYKRelCol(void)
{
    return CheckCMYK(INTENT_RELATIVE_COLORIMETRIC, "test1.icc", "test2.icc");
}
