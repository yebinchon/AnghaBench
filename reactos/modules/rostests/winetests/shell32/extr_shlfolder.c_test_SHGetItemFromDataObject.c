
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int SHCONTF ;
typedef int LPITEMIDLIST ;
typedef int LPCITEMIDLIST ;
typedef int IShellView ;
typedef int IShellItem ;
typedef int IShellFolder ;
typedef int IEnumIDList ;
typedef int IDataObject ;
typedef scalar_t__ HRESULT ;


 int DOGIF_DEFAULT ;
 int DOGIF_NO_HDROP ;
 int DOGIF_NO_URL ;
 int DOGIF_ONLY_IF_ONE ;
 int DOGIF_TRAVERSE_LINK ;
 scalar_t__ E_FAIL ;
 scalar_t__ E_INVALIDARG ;
 int IDataObject_Release (int *) ;
 scalar_t__ IEnumIDList_Next (int *,int,int *,int *) ;
 int IEnumIDList_Release (int *) ;
 int IID_IDataObject ;
 int IID_IShellItem ;
 int IID_IShellView ;
 int ILFree (int ) ;
 scalar_t__ IShellFolder_CreateViewObject (int *,int *,int *,void**) ;
 scalar_t__ IShellFolder_EnumObjects (int *,int *,int,int **) ;
 scalar_t__ IShellFolder_GetUIObjectOf (int *,int *,int,int *,int *,int *,void**) ;
 int IShellFolder_Release (int *) ;
 int IShellItem_Release (int *) ;
 int IShellView_Release (int *) ;
 int SHCONTF_FOLDERS ;
 int SHCONTF_INCLUDEHIDDEN ;
 int SHCONTF_NONFOLDERS ;
 int SHGetDesktopFolder (int **) ;
 scalar_t__ SUCCEEDED (scalar_t__) ;
 scalar_t__ S_OK ;
 int ok (int,char*,scalar_t__) ;
 scalar_t__ pSHGetItemFromDataObject (int *,int ,int *,void**) ;
 int skip (char*) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_SHGetItemFromDataObject(void)
{
    IShellFolder *psfdesktop;
    IShellItem *psi;
    IShellView *psv;
    HRESULT hres;

    if(!pSHGetItemFromDataObject)
    {
        win_skip("No SHGetItemFromDataObject.\n");
        return;
    }

    if(0)
    {

        pSHGetItemFromDataObject(((void*)0), 0, &IID_IShellItem, ((void*)0));
    }

    hres = pSHGetItemFromDataObject(((void*)0), 0, &IID_IShellItem, (void**)&psv);
    ok(hres == E_INVALIDARG, "got 0x%08x\n", hres);

    SHGetDesktopFolder(&psfdesktop);

    hres = IShellFolder_CreateViewObject(psfdesktop, ((void*)0), &IID_IShellView, (void**)&psv);
    ok(hres == S_OK, "got 0x%08x\n", hres);
    if(SUCCEEDED(hres))
    {
        IEnumIDList *peidl;
        IDataObject *pdo;
        SHCONTF enum_flags;

        enum_flags = SHCONTF_NONFOLDERS | SHCONTF_FOLDERS | SHCONTF_INCLUDEHIDDEN;
        hres = IShellFolder_EnumObjects(psfdesktop, ((void*)0), enum_flags, &peidl);
        ok(hres == S_OK, "got 0x%08x\n", hres);
        if(SUCCEEDED(hres))
        {
            LPITEMIDLIST apidl[5];
            UINT count = 0, i;

            for(count = 0; count < 5; count++)
                if(IEnumIDList_Next(peidl, 1, &apidl[count], ((void*)0)) != S_OK)
                    break;

            if(count)
            {
                hres = IShellFolder_GetUIObjectOf(psfdesktop, ((void*)0), 1, (LPCITEMIDLIST*)apidl,
                                                  &IID_IDataObject, ((void*)0), (void**)&pdo);
                ok(hres == S_OK, "got 0x%08x\n", hres);
                if(SUCCEEDED(hres))
                {
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_DEFAULT, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_TRAVERSE_LINK, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_NO_HDROP, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_NO_URL, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_ONLY_IF_ONE, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);

                    IDataObject_Release(pdo);
                }
            }
            else
                skip("No file(s) found - skipping single-file test.\n");

            if(count > 1)
            {
                hres = IShellFolder_GetUIObjectOf(psfdesktop, ((void*)0), count, (LPCITEMIDLIST*)apidl,
                                                  &IID_IDataObject, ((void*)0), (void**)&pdo);
                ok(hres == S_OK, "got 0x%08x\n", hres);
                if(SUCCEEDED(hres))
                {
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_DEFAULT, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_TRAVERSE_LINK, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_NO_HDROP, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_NO_URL, &IID_IShellItem, (void**)&psi);
                    ok(hres == S_OK, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    hres = pSHGetItemFromDataObject(pdo, DOGIF_ONLY_IF_ONE, &IID_IShellItem, (void**)&psi);
                    ok(hres == E_FAIL, "got 0x%08x\n", hres);
                    if(SUCCEEDED(hres)) IShellItem_Release(psi);
                    IDataObject_Release(pdo);
                }
            }
            else
                skip("zero or one file found - skipping multi-file test.\n");

            for(i = 0; i < count; i++)
                ILFree(apidl[i]);

            IEnumIDList_Release(peidl);
        }

        IShellView_Release(psv);
    }

    IShellFolder_Release(psfdesktop);
}
