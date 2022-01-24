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
typedef  int /*<<< orphan*/  VARIANT ;
typedef  int ULONG ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  IFolder ;
typedef  int /*<<< orphan*/  IFileCollection ;
typedef  int /*<<< orphan*/  IFile ;
typedef  int /*<<< orphan*/  IEnumVARIANT ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/ * BSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CLSID_File ; 
 int /*<<< orphan*/  CLSID_Files ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int E_NOINTERFACE ; 
 int E_POINTER ; 
 int /*<<< orphan*/  FILE_FLAG_DELETE_ON_CLOSE ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  IID_IEnumVARIANT ; 
 int /*<<< orphan*/  IID_IFile ; 
 int FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC21 (char*) ; 
 int S_FALSE ; 
 int S_OK ; 
 int /*<<< orphan*/ * FUNC22 (char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 int VT_DISPATCH ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *) ; 
 int FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  fs3 ; 
 int /*<<< orphan*/  FUNC28 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC29 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC31 (char*,char*) ; 
 int /*<<< orphan*/  FUNC32 (int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC33 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC34 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC35(void)
{
    static const WCHAR fooW[] = {'\\','f','o','o',0};
    static const WCHAR aW[] = {'\\','a',0};
    static const WCHAR bW[] = {'\\','b',0};
    static const WCHAR cW[] = {'\\','c',0};
    WCHAR buffW[MAX_PATH], pathW[MAX_PATH];
    IFolder *folder;
    IFileCollection *files;
    IFile *file;
    IEnumVARIANT *enumvar, *clone;
    LONG count, ref, ref2, i;
    IUnknown *unk, *unk2;
    ULONG fetched;
    VARIANT var, var2[2];
    HRESULT hr;
    BSTR str;
    HANDLE file_a, file_b, file_c;
    int found_a = 0, found_b = 0, found_c = 0;

    FUNC28(fooW, buffW);
    FUNC1(buffW, NULL);

    str = FUNC22(buffW);
    hr = FUNC14(fs3, str, &folder);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    FUNC23(str);

    hr = FUNC18(folder, NULL);
    FUNC32(hr == E_POINTER, "got 0x%08x\n", hr);

    FUNC31(pathW, buffW);
    FUNC29(pathW, aW);
    file_a = FUNC2(pathW, GENERIC_READ | GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
                         FILE_FLAG_DELETE_ON_CLOSE, 0);
    FUNC31(pathW, buffW);
    FUNC29(pathW, bW);
    file_b = FUNC2(pathW, GENERIC_READ | GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
                         FILE_FLAG_DELETE_ON_CLOSE, 0);

    hr = FUNC18(folder, &files);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    FUNC33(files, &CLSID_Files);
    FUNC17(folder);

    count = 0;
    hr = FUNC12(files, &count);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    FUNC32(count == 2, "got %d\n", count);

    FUNC31(pathW, buffW);
    FUNC29(pathW, cW);
    file_c = FUNC2(pathW, GENERIC_READ | GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
                         FILE_FLAG_DELETE_ON_CLOSE, 0);

    /* every time property is requested it scans directory */
    count = 0;
    hr = FUNC12(files, &count);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    FUNC32(count == 3, "got %d\n", count);

    hr = FUNC13(files, NULL);
    FUNC32(hr == E_POINTER, "got 0x%08x\n", hr);

    hr = FUNC10(files, &IID_IEnumVARIANT, (void**)&unk);
    FUNC32(hr == E_NOINTERFACE, "got 0x%08x\n", hr);

    /* NewEnum creates new instance each time it's called */
    ref = FUNC3(files);

    unk = NULL;
    hr = FUNC13(files, &unk);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);

    ref2 = FUNC3(files);
    FUNC32(ref2 == ref + 1, "got %d, %d\n", ref2, ref);

    unk2 = NULL;
    hr = FUNC13(files, &unk2);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    FUNC32(unk != unk2, "got %p, %p\n", *unk2, unk);
    FUNC20(unk2);

    /* now get IEnumVARIANT */
    ref = FUNC3(files);
    hr = FUNC19(unk, &IID_IEnumVARIANT, (void**)&enumvar);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    ref2 = FUNC3(files);
    FUNC32(ref2 == ref, "got %d, %d\n", ref2, ref);

    /* clone enumerator */
    hr = FUNC5(enumvar, &clone);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    FUNC32(clone != enumvar, "got %p, %p\n", *enumvar, clone);
    FUNC7(clone);

    hr = FUNC8(enumvar);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);

    for (i = 0; i < 3; i++)
    {
        FUNC27(&var);
        fetched = 0;
        hr = FUNC6(enumvar, 1, &var, &fetched);
        FUNC32(hr == S_OK, "%d: got 0x%08x\n", i, hr);
        FUNC32(fetched == 1, "%d: got %d\n", i, fetched);
        FUNC32(FUNC25(&var) == VT_DISPATCH, "%d: got type %d\n", i, FUNC25(&var));

        hr = FUNC4(FUNC24(&var), &IID_IFile, (void **)&file);
        FUNC32(hr == S_OK, "got 0x%08x\n", hr);
        FUNC33(file, &CLSID_File);

        str = NULL;
        hr = FUNC16(file, &str);
        FUNC32(hr == S_OK, "got 0x%08x\n", hr);
        if (!FUNC30(str, aW + 1))
            found_a++;
        else if (!FUNC30(str, bW + 1))
            found_b++;
        else if (!FUNC30(str, cW + 1))
            found_c++;
        else
            FUNC32(0, "unexpected file %s was found\n", FUNC34(str));
        FUNC23(str);

        FUNC15(file);
        FUNC26(&var);
    }

    FUNC32(found_a == 1 && found_b == 1 && found_c == 1,
       "each file should be found 1 time instead of %d/%d/%d\n",
       found_a, found_b, found_c);

    FUNC27(&var);
    fetched = -1;
    hr = FUNC6(enumvar, 1, &var, &fetched);
    FUNC32(hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC32(fetched == 0, "got %d\n", fetched);

    hr = FUNC8(enumvar);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC9(enumvar, 2);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    hr = FUNC9(enumvar, 0);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);

    FUNC27(&var2[0]);
    FUNC27(&var2[1]);
    fetched = -1;
    hr = FUNC6(enumvar, 0, var2, &fetched);
    FUNC32(hr == S_OK, "got 0x%08x\n", hr);
    FUNC32(fetched == 0, "got %d\n", fetched);
    fetched = -1;
    hr = FUNC6(enumvar, 2, var2, &fetched);
    FUNC32(hr == S_FALSE, "got 0x%08x\n", hr);
    FUNC32(fetched == 1, "got %d\n", fetched);
    FUNC32(FUNC25(&var2[0]) == VT_DISPATCH, "got type %d\n", FUNC25(&var2[0]));
    FUNC26(&var2[0]);
    FUNC26(&var2[1]);

    FUNC7(enumvar);
    FUNC20(unk);

    FUNC0(file_a);
    FUNC0(file_b);
    FUNC0(file_c);
    FUNC21(buffW);

    FUNC11(files);
}