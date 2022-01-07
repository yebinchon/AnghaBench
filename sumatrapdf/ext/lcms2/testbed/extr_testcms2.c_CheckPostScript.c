
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cmsInt32Number ;


 int GenerateCRD (char*,char*) ;
 int GenerateCSA (char*,char*) ;

__attribute__((used)) static
cmsInt32Number CheckPostScript(void)
{
    GenerateCSA("test5.icc", "sRGB_CSA.ps");
    GenerateCSA("aRGBlcms2.icc", "aRGB_CSA.ps");
    GenerateCSA("test4.icc", "sRGBV4_CSA.ps");
    GenerateCSA("test1.icc", "SWOP_CSA.ps");
    GenerateCSA(((void*)0), "Lab_CSA.ps");
    GenerateCSA("graylcms2.icc", "gray_CSA.ps");

    GenerateCRD("test5.icc", "sRGB_CRD.ps");
    GenerateCRD("aRGBlcms2.icc", "aRGB_CRD.ps");
    GenerateCRD(((void*)0), "Lab_CRD.ps");
    GenerateCRD("test1.icc", "SWOP_CRD.ps");
    GenerateCRD("test4.icc", "sRGBV4_CRD.ps");
    GenerateCRD("graylcms2.icc", "gray_CRD.ps");

    return 1;
}
