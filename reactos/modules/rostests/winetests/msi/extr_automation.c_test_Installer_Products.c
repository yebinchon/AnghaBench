
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int szString ;
typedef int WCHAR ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int IUnknown ;
typedef int IEnumVARIANT ;
typedef int IDispatch ;
typedef int HRESULT ;
typedef scalar_t__ BOOL ;


 int DISP_E_BADINDEX ;
 scalar_t__ FALSE ;
 int IDispatch_Release (int *) ;
 int IEnumVARIANT_Clone (int *,int **) ;
 int IEnumVARIANT_Next (int *,int,int *,int*) ;
 int IEnumVARIANT_Release (int *) ;
 int IEnumVARIANT_Reset (int *) ;
 int IEnumVARIANT_Skip (int *,int) ;
 int IID_IEnumVARIANT ;
 int INSTALLSTATE_ADVERTISED ;
 int INSTALLSTATE_DEFAULT ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int Installer_ProductState (int *,int*) ;
 int Installer_Products (int **) ;
 int MAX_PATH ;
 int S_FALSE ;
 int S_OK ;
 int StringList_Count (int *,int*) ;
 int StringList_Item (int *,int,int *) ;
 int StringList__NewEnum (int *,int **) ;
 scalar_t__ TRUE ;
 int VT_BSTR ;
 int V_BSTR (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int lstrcmpW (int *,int ) ;
 int memset (int *,int ,int) ;
 int ok (int,char*,...) ;
 int ok_w2 (char*,int *,int ) ;
 int skip (char*) ;
 int szProductCode ;

__attribute__((used)) static void test_Installer_Products(BOOL bProductInstalled)
{
    WCHAR szString[MAX_PATH];
    HRESULT hr;
    int idx;
    IUnknown *pUnk = ((void*)0);
    IEnumVARIANT *pEnum = ((void*)0);
    VARIANT var;
    ULONG celt;
    int iCount, iValue;
    IDispatch *pStringList = ((void*)0);
    BOOL bProductFound = FALSE;


    hr = Installer_Products(&pStringList);
    ok(hr == S_OK, "Installer_Products failed, hresult 0x%08x\n", hr);
    if (hr == S_OK)
    {

        hr = StringList__NewEnum(pStringList, &pUnk);
        ok(hr == S_OK, "StringList_NewEnum failed, hresult 0x%08x\n", hr);
        if (hr == S_OK)
        {
            hr = IUnknown_QueryInterface(pUnk, &IID_IEnumVARIANT, (void **)&pEnum);
            ok (hr == S_OK, "IUnknown::QueryInterface returned 0x%08x\n", hr);
        }
        if (!pEnum)
            skip("IEnumVARIANT tests\n");


        hr = StringList_Count(pStringList, &iCount);
        ok(hr == S_OK, "StringList_Count failed, hresult 0x%08x\n", hr);

        for (idx=0; idx<iCount; idx++)
        {

            memset(szString, 0, sizeof(szString));
            hr = StringList_Item(pStringList, idx, szString);
            ok(hr == S_OK, "StringList_Item failed (idx %d, count %d), hresult 0x%08x\n", idx, iCount, hr);

            if (hr == S_OK)
            {

                hr = Installer_ProductState(szString, &iValue);
                ok(hr == S_OK, "Installer_ProductState failed, hresult 0x%08x\n", hr);
                if (hr == S_OK)
                    ok(iValue == INSTALLSTATE_DEFAULT || iValue == INSTALLSTATE_ADVERTISED, "Installer_ProductState returned %d, expected %d or %d\n", iValue, INSTALLSTATE_DEFAULT, INSTALLSTATE_ADVERTISED);


                if (!bProductFound && !lstrcmpW(szString, szProductCode))
                    bProductFound = TRUE;


                if (pEnum)
                {
                    hr = IEnumVARIANT_Next(pEnum, 1, &var, &celt);
                    ok(hr == S_OK, "IEnumVARIANT_Next failed (idx %d, count %d), hresult 0x%08x\n", idx, iCount, hr);
                    ok(celt == 1, "%d items were retrieved, expected 1\n", celt);
                    ok(V_VT(&var) == VT_BSTR, "IEnumVARIANT_Next returned variant of type %d, expected %d\n", V_VT(&var), VT_BSTR);
                    ok_w2("%s returned by StringList_Item does not match %s returned by IEnumVARIANT_Next\n", szString, V_BSTR(&var));
                    VariantClear(&var);
                }
            }
        }

        if (bProductInstalled)
        {
            ok(bProductInstalled == bProductFound, "Product expected to %s installed but product code was %s\n",
               bProductInstalled ? "be" : "not be",
               bProductFound ? "found" : "not found");
        }

        if (pEnum)
        {
            IEnumVARIANT *pEnum2 = ((void*)0);

            if (0)
            {

                IEnumVARIANT_Clone(pEnum, ((void*)0));
            }


            hr = IEnumVARIANT_Clone(pEnum, &pEnum2);
            ok(hr == S_OK, "IEnumVARIANT_Clone failed, hresult 0x%08x\n", hr);
            if (hr == S_OK)
            {



                if (iCount)
                {
                    hr = IEnumVARIANT_Next(pEnum2, 1, &var, &celt);
                    ok(hr == S_OK, "IEnumVARIANT_Next failed, hresult 0x%08x\n", hr);
                    ok(celt == 1, "%d items were retrieved, expected 0\n", celt);
                    ok(V_VT(&var) == VT_BSTR, "IEnumVARIANT_Next returned variant of type %d, expected %d\n", V_VT(&var), VT_BSTR);
                    VariantClear(&var);
                }
                else
                    skip("IEnumVARIANT::Next of clone will not return success with 0 products\n");

                IEnumVARIANT_Release(pEnum2);
            }


            hr = IEnumVARIANT_Skip(pEnum, 1);
            ok(hr == S_FALSE, "IEnumVARIANT_Skip failed, hresult 0x%08x\n", hr);


            hr = IEnumVARIANT_Next(pEnum, 1, ((void*)0), &celt);
            ok(hr == S_FALSE, "IEnumVARIANT_Next failed, hresult 0x%08x\n", hr);
            ok(celt == 0, "%d items were retrieved, expected 0\n", celt);


            hr = IEnumVARIANT_Next(pEnum, 1, &var, &celt);
            ok(hr == S_FALSE, "IEnumVARIANT_Next failed, hresult 0x%08x\n", hr);
            ok(celt == 0, "%d items were retrieved, expected 0\n", celt);
            VariantClear(&var);


            hr = IEnumVARIANT_Reset(pEnum);
            ok(hr == S_OK, "IEnumVARIANT_Reset failed, hresult 0x%08x\n", hr);

            if (iCount)
            {

                hr = IEnumVARIANT_Skip(pEnum, iCount-1);
                ok(hr == S_OK, "IEnumVARIANT_Skip failed, hresult 0x%08x\n", hr);



                hr = IEnumVARIANT_Next(pEnum, 1, &var, ((void*)0));
                ok(hr == S_OK, "IEnumVARIANT_Next failed (idx %d, count %d), hresult 0x%08x\n", idx, iCount, hr);
                ok(V_VT(&var) == VT_BSTR, "IEnumVARIANT_Next returned variant of type %d, expected %d\n", V_VT(&var), VT_BSTR);
                ok_w2("%s returned by StringList_Item does not match %s returned by IEnumVARIANT_Next\n", szString, V_BSTR(&var));
                VariantClear(&var);
            }
            else
                skip("IEnumVARIANT::Skip impossible for 0 products\n");
        }


        memset(szString, 0, sizeof(szString));
        hr = StringList_Item(pStringList, iCount, szString);
        ok(hr == DISP_E_BADINDEX, "StringList_Item for an invalid index did not return DISP_E_BADINDEX, hresult 0x%08x\n", hr);

        if (pEnum) IEnumVARIANT_Release(pEnum);
        if (pUnk) IUnknown_Release(pUnk);
        IDispatch_Release(pStringList);
    }
}
