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
typedef  char WCHAR ;
typedef  int ULONG ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  REFIID ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellItemArray ;
typedef  void IShellItem ;
typedef  int /*<<< orphan*/  IShellFolder ;
typedef  void IEnumShellItems ;
typedef  int /*<<< orphan*/  IEnumIDList ;
typedef  void* HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 void* E_INVALIDARG ; 
 void* E_NOTIMPL ; 
 scalar_t__ FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 void* FUNC5 (void*,void**) ; 
 void* FUNC6 (void*,int,void**,int*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 void* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void**) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ **) ; 
 void* FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 void* FUNC14 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int*) ; 
 void* FUNC16 (int /*<<< orphan*/ *,int,void**) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 void* FUNC18 (void*,void*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC19 (void*) ; 
 int MAX_PATH ; 
 int SHCONTF_FOLDERS ; 
 int SHCONTF_NONFOLDERS ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC21 (void*) ; 
 void* S_FALSE ; 
 void* S_OK ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (char*) ; 
 int /*<<< orphan*/  FUNC25 (int,char*,...) ; 
 void* FUNC26 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC27 (char*) ; 

__attribute__((used)) static void FUNC28(void)
{
    IShellFolder *pdesktopsf, *psf;
    IEnumIDList *peidl;
    WCHAR cTestDirW[MAX_PATH];
    HRESULT hr;
    LPITEMIDLIST pidl_testdir;
    static const WCHAR testdirW[] = {'t','e','s','t','d','i','r',0};

    if(!&pSHCreateShellItemArray)
    {
        FUNC27("No SHCreateShellItemArray, skipping test...\n");
        return;
    }

    FUNC0();

    FUNC20(&pdesktopsf);

    FUNC2(MAX_PATH, cTestDirW);
    FUNC24(cTestDirW);
    FUNC23(cTestDirW, testdirW);

    hr = FUNC12(pdesktopsf, NULL, NULL, cTestDirW, NULL, &pidl_testdir, 0);
    FUNC25(hr == S_OK, "got 0x%08x\n", hr);
    if(FUNC21(hr))
    {
        hr = FUNC10(pdesktopsf, pidl_testdir, NULL, (REFIID)&IID_IShellFolder,
                                       (void**)&psf);
        FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
        FUNC9(pidl_testdir);
    }
    FUNC13(pdesktopsf);
    if (FUNC1(hr)) return;

    hr = FUNC11(psf, NULL, SHCONTF_FOLDERS | SHCONTF_NONFOLDERS, &peidl);
    FUNC25(hr == S_OK, "Got %08x\n", hr);
    if(FUNC21(hr))
    {
        IShellItemArray *psia;
        LPITEMIDLIST apidl[5];
        UINT done, numitems, i;

        for(done = 0; done < 5; done++)
            if(FUNC3(peidl, 1, &apidl[done], NULL) != S_OK)
                break;
        FUNC25(done == 5, "Got %d pidls\n", done);
        FUNC4(peidl);

        /* Create a ShellItemArray */
        hr = FUNC26(NULL, psf, done, (LPCITEMIDLIST*)apidl, &psia);
        FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
        if(FUNC21(hr))
        {
            IEnumShellItems *iesi;
            IShellItem *my_array[10];
            ULONG fetched;

            FUNC15(psia, &numitems);
            FUNC25(numitems == done, "Got %d, expected %d\n", numitems, done);

            iesi = NULL;
            hr = FUNC14(psia, &iesi);
            FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
            FUNC25(iesi != NULL, "Got NULL\n");
            if(FUNC21(hr))
            {
                IEnumShellItems *iesi2;

                /* This should fail according to the documentation and Win7+ */
                for(i = 0; i < 10; i++) my_array[i] = (void*)0xdeadbeef;
                hr = FUNC6(iesi, 2, my_array, NULL);
                FUNC25(hr == E_INVALIDARG || FUNC22(hr == S_OK) /* Vista */, "Got 0x%08x\n", hr);
                for(i = 0; i < 2; i++)
                {
                    FUNC25(my_array[i] == (void*)0xdeadbeef ||
                       FUNC22(my_array[i] != (void*)0xdeadbeef && my_array[i] != NULL), /* Vista */
                       "Got %p (%d)\n", my_array[i], i);

                    if(my_array[i] != (void*)0xdeadbeef)
                        FUNC19(my_array[i]);
                }
                FUNC25(my_array[2] == (void*)0xdeadbeef, "Got %p\n", my_array[2]);

                FUNC8(iesi);
                for(i = 0; i < 10; i++) my_array[i] = (void*)0xdeadbeef;
                hr = FUNC6(iesi, 1, my_array, NULL);
                FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
                FUNC25(my_array[0] != NULL && my_array[0] != (void*)0xdeadbeef, "Got %p\n", my_array[0]);
                if(my_array[0] != NULL && my_array[0] != (void*)0xdeadbeef)
                    FUNC19(my_array[0]);
                FUNC25(my_array[1] == (void*)0xdeadbeef, "Got %p\n", my_array[1]);

                FUNC8(iesi);
                fetched = 0;
                for(i = 0; i < 10; i++) my_array[i] = (void*)0xdeadbeef;
                hr = FUNC6(iesi, numitems, my_array, &fetched);
                FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
                FUNC25(fetched == numitems, "Got %d\n", fetched);
                for(i = 0;i < numitems; i++)
                {
                    FUNC25(my_array[i] != NULL && my_array[i] != (void*)0xdeadbeef,
                       "Got %p at %d\n", my_array[i], i);

                    if(my_array[i] != NULL && my_array[i] != (void*)0xdeadbeef)
                        FUNC19(my_array[i]);
                }
                FUNC25(my_array[i] == (void*)0xdeadbeef, "Got %p\n", my_array[i]);

                /* Compare all the items */
                FUNC8(iesi);
                for(i = 0; i < numitems; i++)
                {
                    IShellItem *psi;
                    int order;

                    hr = FUNC16(psia, i, &psi);
                    FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
                    hr = FUNC6(iesi, 1, my_array, &fetched);
                    FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
                    FUNC25(fetched == 1, "Got %d\n", fetched);

                    hr = FUNC18(psi, my_array[0], 0, &order);
                    FUNC25(hr == S_OK, "Got 0x%08x\n", hr);
                    FUNC25(order == 0, "Got %d\n", order);

                    FUNC19(psi);
                    FUNC19(my_array[0]);
                }

                my_array[0] = (void*)0xdeadbeef;
                hr = FUNC6(iesi, 1, my_array, &fetched);
                FUNC25(hr == S_FALSE, "Got 0x%08x\n", hr);
                FUNC25(fetched == 0, "Got %d\n", fetched);
                FUNC25(my_array[0] == (void*)0xdeadbeef, "Got %p\n", my_array[0]);

                /* Cloning not implemented anywhere */
                iesi2 = (void*)0xdeadbeef;
                hr = FUNC5(iesi, &iesi2);
                FUNC25(hr == E_NOTIMPL, "Got 0x%08x\n", hr);
                FUNC25(iesi2 == NULL || FUNC22(iesi2 == (void*)0xdeadbeef) /* Vista */, "Got %p\n", iesi2);

                FUNC7(iesi);
            }

            FUNC17(psia);
        }

        for(i = 0; i < done; i++)
            FUNC9(apidl[i]);
    }
}