
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int CheckCMYK (int ,char*,char*) ;
 int INTENT_PERCEPTUAL ;

__attribute__((used)) static
cmsInt32Number CheckCMYKPerceptual(void)
{
    return CheckCMYK(INTENT_PERCEPTUAL, "test1.icc", "test2.icc");
}
