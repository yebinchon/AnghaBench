
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef char WCHAR ;
typedef int VARIANT ;
typedef int UINT ;
struct TYPE_3__ {int * rgvarg; scalar_t__ cArgs; int * rgdispidNamedArgs; scalar_t__ cNamedArgs; } ;
typedef int * LPVOID ;
typedef int LCID ;
typedef int ITypeInfo ;
typedef int IFontDisp ;
typedef int HRESULT ;
typedef TYPE_1__ DISPPARAMS ;
typedef int BSTR ;


 int DISPATCH_PROPERTYGET ;
 int DISPID_FONT_NAME ;
 int IFontDisp_GetTypeInfo (int *,int ,int ,int **) ;
 int IFontDisp_Invoke (int *,int ,int *,int ,int ,TYPE_1__*,int *,int *,int *) ;
 int IFontDisp_Release (int *) ;
 int IID_IFontDisp ;
 int IID_NULL ;
 int ITypeInfo_GetNames (int *,int ,int *,int,int*) ;
 int ITypeInfo_Release (int *) ;
 int LANG_ENGLISH ;
 int LOCALE_NEUTRAL ;
 int MAKELANGID (int ,int ) ;
 int MAKELCID (int ,int ) ;
 int SORT_DEFAULT ;
 int SUBLANG_ENGLISH_US ;
 int S_OK ;
 int SysFreeString (int ) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int lstrcmpiW (int ,char*) ;
 int ok (int,char*,...) ;
 int pOleCreateFontIndirect (int *,int *,int **) ;

__attribute__((used)) static void test_type_info(void)
{
        LPVOID pvObj = ((void*)0);
        HRESULT hres;
        IFontDisp* fontdisp = ((void*)0);
 ITypeInfo* pTInfo;
 WCHAR name_Name[] = {'N','a','m','e',0};
 BSTR names[3];
 UINT n;
        LCID en_us = MAKELCID(MAKELANGID(LANG_ENGLISH,SUBLANG_ENGLISH_US),
                SORT_DEFAULT);
        DISPPARAMS dispparams;
        VARIANT varresult;

        pOleCreateFontIndirect(((void*)0), &IID_IFontDisp, &pvObj);
        fontdisp = pvObj;

 hres = IFontDisp_GetTypeInfo(fontdisp, 0, en_us, &pTInfo);
 ok(hres == S_OK, "GTI returned 0x%08x instead of S_OK.\n", hres);
 ok(pTInfo != ((void*)0), "GTI returned NULL.\n");

 hres = ITypeInfo_GetNames(pTInfo, DISPID_FONT_NAME, names, 3, &n);
 ok(hres == S_OK, "GetNames returned 0x%08x instead of S_OK.\n", hres);
 ok(n == 1, "GetNames returned %d names instead of 1.\n", n);
 ok(!lstrcmpiW(names[0],name_Name), "DISPID_FONT_NAME doesn't get 'Names'.\n");
 SysFreeString(names[0]);

 ITypeInfo_Release(pTInfo);

        dispparams.cNamedArgs = 0;
        dispparams.rgdispidNamedArgs = ((void*)0);
        dispparams.cArgs = 0;
        dispparams.rgvarg = ((void*)0);
        VariantInit(&varresult);
        hres = IFontDisp_Invoke(fontdisp, DISPID_FONT_NAME, &IID_NULL,
            LOCALE_NEUTRAL, DISPATCH_PROPERTYGET, &dispparams, &varresult,
            ((void*)0), ((void*)0));
        ok(hres == S_OK, "IFontDisp_Invoke return 0x%08x instead of S_OK.\n", hres);
        VariantClear(&varresult);

 IFontDisp_Release(fontdisp);
}
