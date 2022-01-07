
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int IFolder ;
typedef scalar_t__ HRESULT ;
typedef int DWORD ;
typedef char* BSTR ;


 int ARRAY_SIZE (char*) ;
 scalar_t__ E_INVALIDARG ;
 scalar_t__ E_POINTER ;
 int GetSystemDirectoryW (char*,int ) ;
 int GetTempPathW (int ,char*) ;
 int GetWindowsDirectoryW (char*,int ) ;
 scalar_t__ IFileSystem3_GetSpecialFolder (int ,scalar_t__,int **) ;
 int IFolder_Release (int *) ;
 scalar_t__ IFolder_get_Path (int *,char**) ;
 int MAX_PATH ;
 scalar_t__ S_OK ;
 int SysFreeString (char*) ;
 scalar_t__ SystemFolder ;
 scalar_t__ TemporaryFolder ;
 scalar_t__ WindowsFolder ;
 int fs3 ;
 int lstrcmpiW (char*,char*) ;
 int ok (int,char*,scalar_t__,...) ;
 int wine_dbgstr_w (char*) ;

__attribute__((used)) static void test_GetSpecialFolder(void)
{
    WCHAR pathW[MAX_PATH];
    IFolder *folder;
    HRESULT hr;
    DWORD ret;
    BSTR path;

    hr = IFileSystem3_GetSpecialFolder(fs3, WindowsFolder, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    hr = IFileSystem3_GetSpecialFolder(fs3, TemporaryFolder+1, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    hr = IFileSystem3_GetSpecialFolder(fs3, TemporaryFolder+1, &folder);
    ok(hr == E_INVALIDARG, "got 0x%08x\n", hr);

    hr = IFileSystem3_GetSpecialFolder(fs3, WindowsFolder, &folder);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IFolder_get_Path(folder, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    GetWindowsDirectoryW(pathW, ARRAY_SIZE(pathW));
    ok(!lstrcmpiW(pathW, path), "got %s, expected %s\n", wine_dbgstr_w(path), wine_dbgstr_w(pathW));
    SysFreeString(path);
    IFolder_Release(folder);

    hr = IFileSystem3_GetSpecialFolder(fs3, SystemFolder, &folder);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IFolder_get_Path(folder, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    GetSystemDirectoryW(pathW, ARRAY_SIZE(pathW));
    ok(!lstrcmpiW(pathW, path), "got %s, expected %s\n", wine_dbgstr_w(path), wine_dbgstr_w(pathW));
    SysFreeString(path);
    IFolder_Release(folder);

    hr = IFileSystem3_GetSpecialFolder(fs3, TemporaryFolder, &folder);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = IFolder_get_Path(folder, &path);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ret = GetTempPathW(ARRAY_SIZE(pathW), pathW);
    if (ret && pathW[ret-1] == '\\')
        pathW[ret-1] = 0;

    ok(!lstrcmpiW(pathW, path), "got %s, expected %s\n", wine_dbgstr_w(path), wine_dbgstr_w(pathW));
    SysFreeString(path);
    IFolder_Release(folder);
}
