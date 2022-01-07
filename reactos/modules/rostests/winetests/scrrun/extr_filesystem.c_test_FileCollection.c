
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int VARIANT ;
typedef int ULONG ;
typedef int LONG ;
typedef int IUnknown ;
typedef int IFolder ;
typedef int IFileCollection ;
typedef int IFile ;
typedef int IEnumVARIANT ;
typedef int HRESULT ;
typedef int HANDLE ;
typedef int * BSTR ;


 int CLSID_File ;
 int CLSID_Files ;
 int CREATE_ALWAYS ;
 int CloseHandle (int ) ;
 int CreateDirectoryW (char*,int *) ;
 int CreateFileW (char*,int,int ,int *,int ,int ,int ) ;
 int E_NOINTERFACE ;
 int E_POINTER ;
 int FILE_FLAG_DELETE_ON_CLOSE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int GET_REFCOUNT (int *) ;
 int IDispatch_QueryInterface (int ,int *,void**) ;
 int IEnumVARIANT_Clone (int *,int **) ;
 int IEnumVARIANT_Next (int *,int,int *,int*) ;
 int IEnumVARIANT_Release (int *) ;
 int IEnumVARIANT_Reset (int *) ;
 int IEnumVARIANT_Skip (int *,int) ;
 int IFileCollection_QueryInterface (int *,int *,void**) ;
 int IFileCollection_Release (int *) ;
 int IFileCollection_get_Count (int *,int*) ;
 int IFileCollection_get__NewEnum (int *,int **) ;
 int IFileSystem3_GetFolder (int ,int *,int **) ;
 int IFile_Release (int *) ;
 int IFile_get_Name (int *,int **) ;
 int IFolder_Release (int *) ;
 int IFolder_get_Files (int *,int **) ;
 int IID_IEnumVARIANT ;
 int IID_IFile ;
 int IUnknown_QueryInterface (int *,int *,void**) ;
 int IUnknown_Release (int *) ;
 int MAX_PATH ;
 int RemoveDirectoryW (char*) ;
 int S_FALSE ;
 int S_OK ;
 int * SysAllocString (char*) ;
 int SysFreeString (int *) ;
 int VT_DISPATCH ;
 int V_DISPATCH (int *) ;
 int V_VT (int *) ;
 int VariantClear (int *) ;
 int VariantInit (int *) ;
 int fs3 ;
 int get_temp_path (char const*,char*) ;
 int lstrcatW (char*,char const*) ;
 int lstrcmpW (int *,char const*) ;
 int lstrcpyW (char*,char*) ;
 int ok (int,char*,int,...) ;
 int test_provideclassinfo (int *,int *) ;
 int wine_dbgstr_w (int *) ;

__attribute__((used)) static void test_FileCollection(void)
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

    get_temp_path(fooW, buffW);
    CreateDirectoryW(buffW, ((void*)0));

    str = SysAllocString(buffW);
    hr = IFileSystem3_GetFolder(fs3, str, &folder);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    SysFreeString(str);

    hr = IFolder_get_Files(folder, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    lstrcpyW(pathW, buffW);
    lstrcatW(pathW, aW);
    file_a = CreateFileW(pathW, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                         FILE_FLAG_DELETE_ON_CLOSE, 0);
    lstrcpyW(pathW, buffW);
    lstrcatW(pathW, bW);
    file_b = CreateFileW(pathW, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                         FILE_FLAG_DELETE_ON_CLOSE, 0);

    hr = IFolder_get_Files(folder, &files);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    test_provideclassinfo(files, &CLSID_Files);
    IFolder_Release(folder);

    count = 0;
    hr = IFileCollection_get_Count(files, &count);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(count == 2, "got %d\n", count);

    lstrcpyW(pathW, buffW);
    lstrcatW(pathW, cW);
    file_c = CreateFileW(pathW, GENERIC_READ | GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS,
                         FILE_FLAG_DELETE_ON_CLOSE, 0);


    count = 0;
    hr = IFileCollection_get_Count(files, &count);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(count == 3, "got %d\n", count);

    hr = IFileCollection_get__NewEnum(files, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    hr = IFileCollection_QueryInterface(files, &IID_IEnumVARIANT, (void**)&unk);
    ok(hr == E_NOINTERFACE, "got 0x%08x\n", hr);


    ref = GET_REFCOUNT(files);

    unk = ((void*)0);
    hr = IFileCollection_get__NewEnum(files, &unk);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    ref2 = GET_REFCOUNT(files);
    ok(ref2 == ref + 1, "got %d, %d\n", ref2, ref);

    unk2 = ((void*)0);
    hr = IFileCollection_get__NewEnum(files, &unk2);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(unk != unk2, "got %p, %p\n", unk2, unk);
    IUnknown_Release(unk2);


    ref = GET_REFCOUNT(files);
    hr = IUnknown_QueryInterface(unk, &IID_IEnumVARIANT, (void**)&enumvar);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ref2 = GET_REFCOUNT(files);
    ok(ref2 == ref, "got %d, %d\n", ref2, ref);


    hr = IEnumVARIANT_Clone(enumvar, &clone);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(clone != enumvar, "got %p, %p\n", enumvar, clone);
    IEnumVARIANT_Release(clone);

    hr = IEnumVARIANT_Reset(enumvar);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    for (i = 0; i < 3; i++)
    {
        VariantInit(&var);
        fetched = 0;
        hr = IEnumVARIANT_Next(enumvar, 1, &var, &fetched);
        ok(hr == S_OK, "%d: got 0x%08x\n", i, hr);
        ok(fetched == 1, "%d: got %d\n", i, fetched);
        ok(V_VT(&var) == VT_DISPATCH, "%d: got type %d\n", i, V_VT(&var));

        hr = IDispatch_QueryInterface(V_DISPATCH(&var), &IID_IFile, (void **)&file);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        test_provideclassinfo(file, &CLSID_File);

        str = ((void*)0);
        hr = IFile_get_Name(file, &str);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        if (!lstrcmpW(str, aW + 1))
            found_a++;
        else if (!lstrcmpW(str, bW + 1))
            found_b++;
        else if (!lstrcmpW(str, cW + 1))
            found_c++;
        else
            ok(0, "unexpected file %s was found\n", wine_dbgstr_w(str));
        SysFreeString(str);

        IFile_Release(file);
        VariantClear(&var);
    }

    ok(found_a == 1 && found_b == 1 && found_c == 1,
       "each file should be found 1 time instead of %d/%d/%d\n",
       found_a, found_b, found_c);

    VariantInit(&var);
    fetched = -1;
    hr = IEnumVARIANT_Next(enumvar, 1, &var, &fetched);
    ok(hr == S_FALSE, "got 0x%08x\n", hr);
    ok(fetched == 0, "got %d\n", fetched);

    hr = IEnumVARIANT_Reset(enumvar);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IEnumVARIANT_Skip(enumvar, 2);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IEnumVARIANT_Skip(enumvar, 0);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    VariantInit(&var2[0]);
    VariantInit(&var2[1]);
    fetched = -1;
    hr = IEnumVARIANT_Next(enumvar, 0, var2, &fetched);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(fetched == 0, "got %d\n", fetched);
    fetched = -1;
    hr = IEnumVARIANT_Next(enumvar, 2, var2, &fetched);
    ok(hr == S_FALSE, "got 0x%08x\n", hr);
    ok(fetched == 1, "got %d\n", fetched);
    ok(V_VT(&var2[0]) == VT_DISPATCH, "got type %d\n", V_VT(&var2[0]));
    VariantClear(&var2[0]);
    VariantClear(&var2[1]);

    IEnumVARIANT_Release(enumvar);
    IUnknown_Release(unk);

    CloseHandle(file_a);
    CloseHandle(file_b);
    CloseHandle(file_c);
    RemoveDirectoryW(buffW);

    IFileCollection_Release(files);
}
