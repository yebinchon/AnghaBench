
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * LPVOID ;
typedef int * LPOLESTR ;
typedef int LCID ;
typedef int IFontDisp ;
typedef int HRESULT ;
typedef int DISPID ;


 int IFontDisp_GetIDsOfNames (int *,int *,int **,int,int ,int*) ;
 int IFontDisp_Release (int *) ;
 int IID_IFontDisp ;
 int IID_NULL ;
 int ok (int,char*,char const*,...) ;
 int pOleCreateFontIndirect (int *,int *,int **) ;

__attribute__((used)) static void test_names_ids(WCHAR* w_name_1, const char* a_name_1,
                    WCHAR* w_name_2, const char* a_name_2,
                    LCID lcid, DISPID id_1, DISPID id_2,
                    HRESULT hres_expect, int numnames)
{
    LPVOID pvObj = ((void*)0);
    IFontDisp *fontdisp = ((void*)0);
    HRESULT hres;
    DISPID rgDispId[2] = {0xdeadbeef, 0xdeadbeef};
    LPOLESTR names[2] = {w_name_1, w_name_2};

    pOleCreateFontIndirect(((void*)0), &IID_IFontDisp, &pvObj);
    fontdisp = pvObj;

    hres = IFontDisp_GetIDsOfNames(fontdisp, &IID_NULL, names, numnames,
                                   lcid, rgDispId);


    ok(hres == hres_expect,
        "GetIDsOfNames: \"%s\", \"%s\" returns 0x%08x, expected 0x%08x.\n",
        a_name_1, a_name_2, hres, hres_expect);


    ok(rgDispId[0]==id_1,
        "GetIDsOfNames: \"%s\" gets DISPID 0x%08x, expected 0x%08x.\n",
        a_name_1, rgDispId[0], id_1);


    if (numnames == 2)
    {
        ok(rgDispId[1]==id_2,
            "GetIDsOfNames: ..., \"%s\" gets DISPID 0x%08x, expected 0x%08x.\n",
            a_name_2, rgDispId[1], id_2);
    }

   IFontDisp_Release(fontdisp);
}
