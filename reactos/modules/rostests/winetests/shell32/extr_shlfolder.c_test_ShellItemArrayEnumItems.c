
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int ULONG ;
typedef int UINT ;
typedef int REFIID ;
typedef int LPITEMIDLIST ;
typedef int LPCITEMIDLIST ;
typedef int IShellItemArray ;
typedef void IShellItem ;
typedef int IShellFolder ;
typedef void IEnumShellItems ;
typedef int IEnumIDList ;
typedef void* HRESULT ;


 int CreateFilesFolders () ;
 void* E_INVALIDARG ;
 void* E_NOTIMPL ;
 scalar_t__ FAILED (void*) ;
 int GetCurrentDirectoryW (int,char*) ;
 void* IEnumIDList_Next (int *,int,int *,int *) ;
 int IEnumIDList_Release (int *) ;
 void* IEnumShellItems_Clone (void*,void**) ;
 void* IEnumShellItems_Next (void*,int,void**,int*) ;
 int IEnumShellItems_Release (void*) ;
 int IEnumShellItems_Reset (void*) ;
 int IID_IShellFolder ;
 int ILFree (int ) ;
 void* IShellFolder_BindToObject (int *,int ,int *,int ,void**) ;
 void* IShellFolder_EnumObjects (int *,int *,int,int **) ;
 void* IShellFolder_ParseDisplayName (int *,int *,int *,char*,int *,int *,int ) ;
 int IShellFolder_Release (int *) ;
 void* IShellItemArray_EnumItems (int *,void**) ;
 int IShellItemArray_GetCount (int *,int*) ;
 void* IShellItemArray_GetItemAt (int *,int,void**) ;
 int IShellItemArray_Release (int *) ;
 void* IShellItem_Compare (void*,void*,int ,int*) ;
 int IShellItem_Release (void*) ;
 int MAX_PATH ;
 int SHCONTF_FOLDERS ;
 int SHCONTF_NONFOLDERS ;
 int SHGetDesktopFolder (int **) ;
 scalar_t__ SUCCEEDED (void*) ;
 void* S_FALSE ;
 void* S_OK ;
 scalar_t__ broken (int) ;
 int lstrcatW (char*,char const*) ;
 int myPathAddBackslashW (char*) ;
 int ok (int,char*,...) ;
 void* pSHCreateShellItemArray (int *,int *,int,int *,int **) ;
 int win_skip (char*) ;

__attribute__((used)) static void test_ShellItemArrayEnumItems(void)
{
    IShellFolder *pdesktopsf, *psf;
    IEnumIDList *peidl;
    WCHAR cTestDirW[MAX_PATH];
    HRESULT hr;
    LPITEMIDLIST pidl_testdir;
    static const WCHAR testdirW[] = {'t','e','s','t','d','i','r',0};

    if(!pSHCreateShellItemArray)
    {
        win_skip("No SHCreateShellItemArray, skipping test...\n");
        return;
    }

    CreateFilesFolders();

    SHGetDesktopFolder(&pdesktopsf);

    GetCurrentDirectoryW(MAX_PATH, cTestDirW);
    myPathAddBackslashW(cTestDirW);
    lstrcatW(cTestDirW, testdirW);

    hr = IShellFolder_ParseDisplayName(pdesktopsf, ((void*)0), ((void*)0), cTestDirW, ((void*)0), &pidl_testdir, 0);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    if(SUCCEEDED(hr))
    {
        hr = IShellFolder_BindToObject(pdesktopsf, pidl_testdir, ((void*)0), (REFIID)&IID_IShellFolder,
                                       (void**)&psf);
        ok(hr == S_OK, "Got 0x%08x\n", hr);
        ILFree(pidl_testdir);
    }
    IShellFolder_Release(pdesktopsf);
    if (FAILED(hr)) return;

    hr = IShellFolder_EnumObjects(psf, ((void*)0), SHCONTF_FOLDERS | SHCONTF_NONFOLDERS, &peidl);
    ok(hr == S_OK, "Got %08x\n", hr);
    if(SUCCEEDED(hr))
    {
        IShellItemArray *psia;
        LPITEMIDLIST apidl[5];
        UINT done, numitems, i;

        for(done = 0; done < 5; done++)
            if(IEnumIDList_Next(peidl, 1, &apidl[done], ((void*)0)) != S_OK)
                break;
        ok(done == 5, "Got %d pidls\n", done);
        IEnumIDList_Release(peidl);


        hr = pSHCreateShellItemArray(((void*)0), psf, done, (LPCITEMIDLIST*)apidl, &psia);
        ok(hr == S_OK, "Got 0x%08x\n", hr);
        if(SUCCEEDED(hr))
        {
            IEnumShellItems *iesi;
            IShellItem *my_array[10];
            ULONG fetched;

            IShellItemArray_GetCount(psia, &numitems);
            ok(numitems == done, "Got %d, expected %d\n", numitems, done);

            iesi = ((void*)0);
            hr = IShellItemArray_EnumItems(psia, &iesi);
            ok(hr == S_OK, "Got 0x%08x\n", hr);
            ok(iesi != ((void*)0), "Got NULL\n");
            if(SUCCEEDED(hr))
            {
                IEnumShellItems *iesi2;


                for(i = 0; i < 10; i++) my_array[i] = (void*)0xdeadbeef;
                hr = IEnumShellItems_Next(iesi, 2, my_array, ((void*)0));
                ok(hr == E_INVALIDARG || broken(hr == S_OK) , "Got 0x%08x\n", hr);
                for(i = 0; i < 2; i++)
                {
                    ok(my_array[i] == (void*)0xdeadbeef ||
                       broken(my_array[i] != (void*)0xdeadbeef && my_array[i] != ((void*)0)),
                       "Got %p (%d)\n", my_array[i], i);

                    if(my_array[i] != (void*)0xdeadbeef)
                        IShellItem_Release(my_array[i]);
                }
                ok(my_array[2] == (void*)0xdeadbeef, "Got %p\n", my_array[2]);

                IEnumShellItems_Reset(iesi);
                for(i = 0; i < 10; i++) my_array[i] = (void*)0xdeadbeef;
                hr = IEnumShellItems_Next(iesi, 1, my_array, ((void*)0));
                ok(hr == S_OK, "Got 0x%08x\n", hr);
                ok(my_array[0] != ((void*)0) && my_array[0] != (void*)0xdeadbeef, "Got %p\n", my_array[0]);
                if(my_array[0] != ((void*)0) && my_array[0] != (void*)0xdeadbeef)
                    IShellItem_Release(my_array[0]);
                ok(my_array[1] == (void*)0xdeadbeef, "Got %p\n", my_array[1]);

                IEnumShellItems_Reset(iesi);
                fetched = 0;
                for(i = 0; i < 10; i++) my_array[i] = (void*)0xdeadbeef;
                hr = IEnumShellItems_Next(iesi, numitems, my_array, &fetched);
                ok(hr == S_OK, "Got 0x%08x\n", hr);
                ok(fetched == numitems, "Got %d\n", fetched);
                for(i = 0;i < numitems; i++)
                {
                    ok(my_array[i] != ((void*)0) && my_array[i] != (void*)0xdeadbeef,
                       "Got %p at %d\n", my_array[i], i);

                    if(my_array[i] != ((void*)0) && my_array[i] != (void*)0xdeadbeef)
                        IShellItem_Release(my_array[i]);
                }
                ok(my_array[i] == (void*)0xdeadbeef, "Got %p\n", my_array[i]);


                IEnumShellItems_Reset(iesi);
                for(i = 0; i < numitems; i++)
                {
                    IShellItem *psi;
                    int order;

                    hr = IShellItemArray_GetItemAt(psia, i, &psi);
                    ok(hr == S_OK, "Got 0x%08x\n", hr);
                    hr = IEnumShellItems_Next(iesi, 1, my_array, &fetched);
                    ok(hr == S_OK, "Got 0x%08x\n", hr);
                    ok(fetched == 1, "Got %d\n", fetched);

                    hr = IShellItem_Compare(psi, my_array[0], 0, &order);
                    ok(hr == S_OK, "Got 0x%08x\n", hr);
                    ok(order == 0, "Got %d\n", order);

                    IShellItem_Release(psi);
                    IShellItem_Release(my_array[0]);
                }

                my_array[0] = (void*)0xdeadbeef;
                hr = IEnumShellItems_Next(iesi, 1, my_array, &fetched);
                ok(hr == S_FALSE, "Got 0x%08x\n", hr);
                ok(fetched == 0, "Got %d\n", fetched);
                ok(my_array[0] == (void*)0xdeadbeef, "Got %p\n", my_array[0]);


                iesi2 = (void*)0xdeadbeef;
                hr = IEnumShellItems_Clone(iesi, &iesi2);
                ok(hr == E_NOTIMPL, "Got 0x%08x\n", hr);
                ok(iesi2 == ((void*)0) || broken(iesi2 == (void*)0xdeadbeef) , "Got %p\n", iesi2);

                IEnumShellItems_Release(iesi);
            }

            IShellItemArray_Release(psia);
        }

        for(i = 0; i < done; i++)
            ILFree(apidl[i]);
    }
}
