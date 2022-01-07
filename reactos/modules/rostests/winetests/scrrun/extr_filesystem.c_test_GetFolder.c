
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IFolder ;
typedef int * HRESULT ;
typedef int * BSTR ;


 int CLSID_Folder ;
 int * CTL_E_PATHNOTFOUND ;
 int * E_INVALIDARG ;
 int * E_POINTER ;
 int GetWindowsDirectoryW (char*,int) ;
 int * IFileSystem3_GetFolder (int ,int *,int **) ;
 int IFolder_Release (int *) ;
 int MAX_PATH ;
 int * S_OK ;
 int * SysAllocString (char const*) ;
 int SysFreeString (int *) ;
 int fs3 ;
 int ok (int,char*,int *) ;
 int test_provideclassinfo (int *,int *) ;

__attribute__((used)) static void test_GetFolder(void)
{
    static const WCHAR dummyW[] = {'d','u','m','m','y',0};
    WCHAR buffW[MAX_PATH];
    IFolder *folder;
    HRESULT hr;
    BSTR str;

    folder = (void*)0xdeadbeef;
    hr = IFileSystem3_GetFolder(fs3, ((void*)0), &folder);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);
    ok(folder == ((void*)0), "got %p\n", folder);

    hr = IFileSystem3_GetFolder(fs3, ((void*)0), ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);


    str = SysAllocString(dummyW);

    hr = IFileSystem3_GetFolder(fs3, str, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    folder = (void*)0xdeadbeef;
    hr = IFileSystem3_GetFolder(fs3, str, &folder);
    ok(hr == CTL_E_PATHNOTFOUND, "got 0x%08x\n", hr);
    ok(folder == ((void*)0), "got %p\n", folder);
    SysFreeString(str);

    GetWindowsDirectoryW(buffW, MAX_PATH);
    str = SysAllocString(buffW);
    hr = IFileSystem3_GetFolder(fs3, str, &folder);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    SysFreeString(str);
    test_provideclassinfo(folder, &CLSID_Folder);
    IFolder_Release(folder);
}
