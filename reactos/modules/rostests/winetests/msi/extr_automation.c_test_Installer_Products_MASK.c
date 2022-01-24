#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  szString ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int ULONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IEnumVARIANT ;
typedef  int /*<<< orphan*/  IDispatch ;
typedef  int HRESULT ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int DISP_E_BADINDEX ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  IID_IEnumVARIANT ; 
 int INSTALLSTATE_ADVERTISED ; 
 int INSTALLSTATE_DEFAULT ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int*) ; 
 int FUNC9 (int /*<<< orphan*/ **) ; 
 int MAX_PATH ; 
 int S_FALSE ; 
 int S_OK ; 
 int FUNC10 (int /*<<< orphan*/ *,int*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VT_BSTR ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC19 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (char*) ; 
 int /*<<< orphan*/  szProductCode ; 

__attribute__((used)) static void FUNC21(BOOL bProductInstalled)
{
    WCHAR szString[MAX_PATH];
    HRESULT hr;
    int idx;
    IUnknown *pUnk = NULL;
    IEnumVARIANT *pEnum = NULL;
    VARIANT var;
    ULONG celt;
    int iCount, iValue;
    IDispatch *pStringList = NULL;
    BOOL bProductFound = FALSE;

    /* Installer::Products */
    hr = FUNC9(&pStringList);
    FUNC18(hr == S_OK, "Installer_Products failed, hresult 0x%08x\n", hr);
    if (hr == S_OK)
    {
        /* StringList::_NewEnum */
        hr = FUNC12(pStringList, &pUnk);
        FUNC18(hr == S_OK, "StringList_NewEnum failed, hresult 0x%08x\n", hr);
        if (hr == S_OK)
        {
            hr = FUNC6(pUnk, &IID_IEnumVARIANT, (void **)&pEnum);
            FUNC18 (hr == S_OK, "IUnknown::QueryInterface returned 0x%08x\n", hr);
        }
        if (!pEnum)
            FUNC20("IEnumVARIANT tests\n");

        /* StringList::Count */
        hr = FUNC10(pStringList, &iCount);
        FUNC18(hr == S_OK, "StringList_Count failed, hresult 0x%08x\n", hr);

        for (idx=0; idx<iCount; idx++)
        {
            /* StringList::Item */
            FUNC17(szString, 0, sizeof(szString));
            hr = FUNC11(pStringList, idx, szString);
            FUNC18(hr == S_OK, "StringList_Item failed (idx %d, count %d), hresult 0x%08x\n", idx, iCount, hr);

            if (hr == S_OK)
            {
                /* Installer::ProductState */
                hr = FUNC8(szString, &iValue);
                FUNC18(hr == S_OK, "Installer_ProductState failed, hresult 0x%08x\n", hr);
                if (hr == S_OK)
                    FUNC18(iValue == INSTALLSTATE_DEFAULT || iValue == INSTALLSTATE_ADVERTISED, "Installer_ProductState returned %d, expected %d or %d\n", iValue, INSTALLSTATE_DEFAULT, INSTALLSTATE_ADVERTISED);

                /* Not found our product code yet? Check */
                if (!bProductFound && !FUNC16(szString, szProductCode))
                    bProductFound = TRUE;

                /* IEnumVARIANT::Next */
                if (pEnum)
                {
                    hr = FUNC2(pEnum, 1, &var, &celt);
                    FUNC18(hr == S_OK, "IEnumVARIANT_Next failed (idx %d, count %d), hresult 0x%08x\n", idx, iCount, hr);
                    FUNC18(celt == 1, "%d items were retrieved, expected 1\n", celt);
                    FUNC18(FUNC14(&var) == VT_BSTR, "IEnumVARIANT_Next returned variant of type %d, expected %d\n", FUNC14(&var), VT_BSTR);
                    FUNC19("%s returned by StringList_Item does not match %s returned by IEnumVARIANT_Next\n", szString, FUNC13(&var));
                    FUNC15(&var);
                }
            }
        }

        if (bProductInstalled)
        {
            FUNC18(bProductInstalled == bProductFound, "Product expected to %s installed but product code was %s\n",
               bProductInstalled ? "be" : "not be",
               bProductFound ? "found" : "not found");
        }

        if (pEnum)
        {
            IEnumVARIANT *pEnum2 = NULL;

            if (0) /* Crashes on Windows XP */
            {
                /* IEnumVARIANT::Clone, NULL pointer */
                FUNC1(pEnum, NULL);
            }

            /* IEnumVARIANT::Clone */
            hr = FUNC1(pEnum, &pEnum2);
            FUNC18(hr == S_OK, "IEnumVARIANT_Clone failed, hresult 0x%08x\n", hr);
            if (hr == S_OK)
            {
                /* IEnumVARIANT::Clone is supposed to save the position, but it actually just goes back to the beginning */

                /* IEnumVARIANT::Next of the clone */
                if (iCount)
                {
                    hr = FUNC2(pEnum2, 1, &var, &celt);
                    FUNC18(hr == S_OK, "IEnumVARIANT_Next failed, hresult 0x%08x\n", hr);
                    FUNC18(celt == 1, "%d items were retrieved, expected 0\n", celt);
                    FUNC18(FUNC14(&var) == VT_BSTR, "IEnumVARIANT_Next returned variant of type %d, expected %d\n", FUNC14(&var), VT_BSTR);
                    FUNC15(&var);
                }
                else
                    FUNC20("IEnumVARIANT::Next of clone will not return success with 0 products\n");

                FUNC3(pEnum2);
            }

            /* IEnumVARIANT::Skip should fail */
            hr = FUNC5(pEnum, 1);
            FUNC18(hr == S_FALSE, "IEnumVARIANT_Skip failed, hresult 0x%08x\n", hr);

            /* IEnumVARIANT::Next, NULL variant pointer */
            hr = FUNC2(pEnum, 1, NULL, &celt);
            FUNC18(hr == S_FALSE, "IEnumVARIANT_Next failed, hresult 0x%08x\n", hr);
            FUNC18(celt == 0, "%d items were retrieved, expected 0\n", celt);

            /* IEnumVARIANT::Next, should not return any more items */
            hr = FUNC2(pEnum, 1, &var, &celt);
            FUNC18(hr == S_FALSE, "IEnumVARIANT_Next failed, hresult 0x%08x\n", hr);
            FUNC18(celt == 0, "%d items were retrieved, expected 0\n", celt);
            FUNC15(&var);

            /* IEnumVARIANT::Reset */
            hr = FUNC4(pEnum);
            FUNC18(hr == S_OK, "IEnumVARIANT_Reset failed, hresult 0x%08x\n", hr);

            if (iCount)
            {
                /* IEnumVARIANT::Skip to the last product */
                hr = FUNC5(pEnum, iCount-1);
                FUNC18(hr == S_OK, "IEnumVARIANT_Skip failed, hresult 0x%08x\n", hr);

                /* IEnumVARIANT::Next should match the very last retrieved value, also makes sure it works with
                 * NULL celt pointer. */
                hr = FUNC2(pEnum, 1, &var, NULL);
                FUNC18(hr == S_OK, "IEnumVARIANT_Next failed (idx %d, count %d), hresult 0x%08x\n", idx, iCount, hr);
                FUNC18(FUNC14(&var) == VT_BSTR, "IEnumVARIANT_Next returned variant of type %d, expected %d\n", FUNC14(&var), VT_BSTR);
                FUNC19("%s returned by StringList_Item does not match %s returned by IEnumVARIANT_Next\n", szString, FUNC13(&var));
                FUNC15(&var);
            }
            else
                FUNC20("IEnumVARIANT::Skip impossible for 0 products\n");
        }

        /* StringList::Item using an invalid index */
        FUNC17(szString, 0, sizeof(szString));
        hr = FUNC11(pStringList, iCount, szString);
        FUNC18(hr == DISP_E_BADINDEX, "StringList_Item for an invalid index did not return DISP_E_BADINDEX, hresult 0x%08x\n", hr);

        if (pEnum) FUNC3(pEnum);
        if (pUnk) FUNC7(pUnk);
        FUNC0(pStringList);
    }
}