
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef int cmsNAMEDCOLORLIST ;
typedef int cmsIOHANDLER ;
typedef int * cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;
struct TYPE_3__ {int b; int a; int L; } ;
typedef TYPE_1__ cmsCIELab ;


 int TYPE_Lab_DBL ;
 int TYPE_NAMED_COLOR_INDEX ;
 int _cmsIOPrintf (int ,int *,char*,...) ;
 int cmsCloseProfile (int ,int ) ;
 int cmsCreateLab4Profile (int ,int *) ;
 int * cmsCreateTransform (int ,int ,int ,int ,int ,scalar_t__,int ) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDoTransform (int ,int *,scalar_t__*,TYPE_1__*,int) ;
 int * cmsGetNamedColorList (int *) ;
 int cmsMAX_PATH ;
 scalar_t__ cmsNamedColorCount (int ,int *) ;
 int cmsNamedColorInfo (int ,int *,scalar_t__,char*,int *,int *,int *,int *) ;

__attribute__((used)) static
int WriteNamedColorCSA(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hNamedColor, cmsUInt32Number Intent)
{
    cmsHTRANSFORM xform;
    cmsHPROFILE hLab;
    cmsUInt32Number i, nColors;
    char ColorName[cmsMAX_PATH];
    cmsNAMEDCOLORLIST* NamedColorList;

    hLab = cmsCreateLab4Profile(ContextID, ((void*)0));
    xform = cmsCreateTransform(ContextID, hNamedColor, TYPE_NAMED_COLOR_INDEX, hLab, TYPE_Lab_DBL, Intent, 0);
    if (xform == ((void*)0)) return 0;

    NamedColorList = cmsGetNamedColorList(xform);
    if (NamedColorList == ((void*)0)) return 0;

    _cmsIOPrintf(ContextID, m, "<<\n");
    _cmsIOPrintf(ContextID, m, "(colorlistcomment) (%s)\n", "Named color CSA");
    _cmsIOPrintf(ContextID, m, "(Prefix) [ (Pantone ) (PANTONE ) ]\n");
    _cmsIOPrintf(ContextID, m, "(Suffix) [ ( CV) ( CVC) ( C) ]\n");

    nColors = cmsNamedColorCount(ContextID, NamedColorList);


    for (i=0; i < nColors; i++) {

        cmsUInt16Number In[1];
        cmsCIELab Lab;

        In[0] = (cmsUInt16Number) i;

        if (!cmsNamedColorInfo(ContextID, NamedColorList, i, ColorName, ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
                continue;

        cmsDoTransform(ContextID, xform, In, &Lab, 1);
        _cmsIOPrintf(ContextID, m, "  (%s) [ %.3f %.3f %.3f ]\n", ColorName, Lab.L, Lab.a, Lab.b);
    }



    _cmsIOPrintf(ContextID, m, ">>\n");

    cmsDeleteTransform(ContextID, xform);
    cmsCloseProfile(ContextID, hLab);
    return 1;
}
