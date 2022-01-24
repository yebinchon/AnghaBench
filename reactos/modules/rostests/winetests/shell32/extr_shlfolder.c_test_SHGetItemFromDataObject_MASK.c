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
typedef  int UINT ;
typedef  int SHCONTF ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellView ;
typedef  int /*<<< orphan*/  IShellItem ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  int /*<<< orphan*/  IEnumIDList ;
typedef  int /*<<< orphan*/  IDataObject ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  DOGIF_DEFAULT ; 
 int /*<<< orphan*/  DOGIF_NO_HDROP ; 
 int /*<<< orphan*/  DOGIF_NO_URL ; 
 int /*<<< orphan*/  DOGIF_ONLY_IF_ONE ; 
 int /*<<< orphan*/  DOGIF_TRAVERSE_LINK ; 
 scalar_t__ E_FAIL ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IDataObject ; 
 int /*<<< orphan*/  IID_IShellItem ; 
 int /*<<< orphan*/  IID_IShellView ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int SHCONTF_FOLDERS ; 
 int SHCONTF_INCLUDEHIDDEN ; 
 int SHCONTF_NONFOLDERS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC12 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 

__attribute__((used)) static void FUNC16(void)
{
    IShellFolder *psfdesktop;
    IShellItem *psi;
    IShellView *psv;
    HRESULT hres;

    if(!&pSHGetItemFromDataObject)
    {
        FUNC15("No SHGetItemFromDataObject.\n");
        return;
    }

    if(0)
    {
        /* Crashes under win7 */
        FUNC13(NULL, 0, &IID_IShellItem, NULL);
    }

    hres = FUNC13(NULL, 0, &IID_IShellItem, (void**)&psv);
    FUNC12(hres == E_INVALIDARG, "got 0x%08x\n", hres);

    FUNC10(&psfdesktop);

    hres = FUNC4(psfdesktop, NULL, &IID_IShellView, (void**)&psv);
    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
    if(FUNC11(hres))
    {
        IEnumIDList *peidl;
        IDataObject *pdo;
        SHCONTF enum_flags;

        enum_flags = SHCONTF_NONFOLDERS | SHCONTF_FOLDERS | SHCONTF_INCLUDEHIDDEN;
        hres = FUNC5(psfdesktop, NULL, enum_flags, &peidl);
        FUNC12(hres == S_OK, "got 0x%08x\n", hres);
        if(FUNC11(hres))
        {
            LPITEMIDLIST apidl[5];
            UINT count = 0, i;

            for(count = 0; count < 5; count++)
                if(FUNC1(peidl, 1, &apidl[count], NULL) != S_OK)
                    break;

            if(count)
            {
                hres = FUNC6(psfdesktop, NULL, 1, (LPCITEMIDLIST*)apidl,
                                                  &IID_IDataObject, NULL, (void**)&pdo);
                FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                if(FUNC11(hres))
                {
                    hres = FUNC13(pdo, DOGIF_DEFAULT, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_TRAVERSE_LINK, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_NO_HDROP, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_NO_URL, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_ONLY_IF_ONE, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);

                    FUNC0(pdo);
                }
            }
            else
                FUNC14("No file(s) found - skipping single-file test.\n");

            if(count > 1)
            {
                hres = FUNC6(psfdesktop, NULL, count, (LPCITEMIDLIST*)apidl,
                                                  &IID_IDataObject, NULL, (void**)&pdo);
                FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                if(FUNC11(hres))
                {
                    hres = FUNC13(pdo, DOGIF_DEFAULT, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_TRAVERSE_LINK, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_NO_HDROP, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_NO_URL, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == S_OK, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    hres = FUNC13(pdo, DOGIF_ONLY_IF_ONE, &IID_IShellItem, (void**)&psi);
                    FUNC12(hres == E_FAIL, "got 0x%08x\n", hres);
                    if(FUNC11(hres)) FUNC8(psi);
                    FUNC0(pdo);
                }
            }
            else
                FUNC14("zero or one file found - skipping multi-file test.\n");

            for(i = 0; i < count; i++)
                FUNC3(apidl[i]);

            FUNC2(peidl);
        }

        FUNC9(psv);
    }

    FUNC7(psfdesktop);
}