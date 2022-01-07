
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ cmsUInt32Number ;
typedef scalar_t__ cmsUInt16Number ;
typedef int cmsNAMEDCOLORLIST ;
typedef int cmsIOHANDLER ;
typedef int * cmsHTRANSFORM ;
typedef int cmsHPROFILE ;
typedef int cmsContext ;


 int BuildColorantList (char*,scalar_t__,scalar_t__*) ;
 int FALSE ;
 int TYPE_NAMED_COLOR_INDEX ;
 scalar_t__ T_CHANNELS (scalar_t__) ;
 int _cmsIOPrintf (int ,int *,char*,...) ;
 int * cmsCreateTransform (int ,int ,int ,int *,scalar_t__,scalar_t__,scalar_t__) ;
 int cmsDeleteTransform (int ,int *) ;
 int cmsDoTransform (int ,int *,scalar_t__*,scalar_t__*,int) ;
 scalar_t__ cmsFLAGS_NODEFAULTRESOURCEDEF ;
 scalar_t__ cmsFormatterForColorspaceOfProfile (int ,int ,int,int ) ;
 int * cmsGetNamedColorList (int *) ;
 int cmsMAXCHANNELS ;
 int cmsMAX_PATH ;
 scalar_t__ cmsNamedColorCount (int ,int *) ;
 int cmsNamedColorInfo (int ,int *,scalar_t__,char*,int *,int *,int *,int *) ;

__attribute__((used)) static
int WriteNamedColorCRD(cmsContext ContextID, cmsIOHANDLER* m, cmsHPROFILE hNamedColor, cmsUInt32Number Intent, cmsUInt32Number dwFlags)
{
    cmsHTRANSFORM xform;
    cmsUInt32Number i, nColors, nColorant;
    cmsUInt32Number OutputFormat;
    char ColorName[cmsMAX_PATH];
    char Colorant[128];
    cmsNAMEDCOLORLIST* NamedColorList;


    OutputFormat = cmsFormatterForColorspaceOfProfile(ContextID, hNamedColor, 2, FALSE);
    nColorant = T_CHANNELS(OutputFormat);


    xform = cmsCreateTransform(ContextID, hNamedColor, TYPE_NAMED_COLOR_INDEX, ((void*)0), OutputFormat, Intent, dwFlags);
    if (xform == ((void*)0)) return 0;


    NamedColorList = cmsGetNamedColorList(xform);
    if (NamedColorList == ((void*)0)) return 0;

    _cmsIOPrintf(ContextID, m, "<<\n");
    _cmsIOPrintf(ContextID, m, "(colorlistcomment) (%s) \n", "Named profile");
    _cmsIOPrintf(ContextID, m, "(Prefix) [ (Pantone ) (PANTONE ) ]\n");
    _cmsIOPrintf(ContextID, m, "(Suffix) [ ( CV) ( CVC) ( C) ]\n");

    nColors = cmsNamedColorCount(ContextID, NamedColorList);

    for (i=0; i < nColors; i++) {

        cmsUInt16Number In[1];
        cmsUInt16Number Out[cmsMAXCHANNELS];

        In[0] = (cmsUInt16Number) i;

        if (!cmsNamedColorInfo(ContextID, NamedColorList, i, ColorName, ((void*)0), ((void*)0), ((void*)0), ((void*)0)))
                continue;

        cmsDoTransform(ContextID, xform, In, Out, 1);
        BuildColorantList(Colorant, nColorant, Out);
        _cmsIOPrintf(ContextID, m, "  (%s) [ %s ]\n", ColorName, Colorant);
    }

    _cmsIOPrintf(ContextID, m, "   >>");

    if (!(dwFlags & cmsFLAGS_NODEFAULTRESOURCEDEF)) {

    _cmsIOPrintf(ContextID, m, " /Current exch /HPSpotTable defineresource pop\n");
    }

    cmsDeleteTransform(ContextID, xform);
    return 1;
}
