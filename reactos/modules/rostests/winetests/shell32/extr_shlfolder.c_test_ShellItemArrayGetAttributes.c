
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int SFGAOF ;
typedef int LPITEMIDLIST ;
typedef scalar_t__ LPCITEMIDLIST ;
typedef int IShellItemArray ;
typedef int IShellFolder ;
typedef int HRESULT ;


 int Cleanup () ;
 int CreateDirectoryA (char*,int *) ;
 int CreateFilesFolders () ;
 int E_UNEXPECTED ;
 int GetCurrentDirectoryW (int,char*) ;
 int ILFree (int ) ;
 int IShellFolder_ParseDisplayName (int *,int *,int *,char*,int *,int *,int *) ;
 int IShellFolder_Release (int *) ;
 int IShellItemArray_GetAttributes (int *,int ,int,int*) ;
 int IShellItemArray_Release (int *) ;
 int MAX_PATH ;
 int RemoveDirectoryA (char*) ;
 int SFGAO_FOLDER ;
 int SHGetDesktopFolder (int **) ;
 int SIATTRIBFLAGS_AND ;
 int SIATTRIBFLAGS_OR ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ broken (int) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char*) ;
 int myPathAddBackslashW (char*) ;
 int ok (int,char*,int) ;
 int pSHCreateShellItemArrayFromIDLists (int,scalar_t__*,int **) ;
 int pSHCreateShellItemArrayFromShellItem ;
 int win_skip (char*) ;

__attribute__((used)) static void test_ShellItemArrayGetAttributes(void)
{
    IShellItemArray *psia_files, *psia_folders1, *psia_folders2, *psia_all;
    IShellFolder *pdesktopsf;
    LPCITEMIDLIST pidl_array[5];
    SFGAOF attr;
    HRESULT hr;
    WCHAR curdirW[MAX_PATH];
    WCHAR buf[MAX_PATH];
    UINT i;
    static const WCHAR testdir1W[] = {'t','e','s','t','d','i','r',0};
    static const WCHAR testdir2W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','d','i','r','2',0};
    static const WCHAR testdir3W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','d','i','r','3',0};
    static const WCHAR testfile1W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','1','.','t','x','t',0};
    static const WCHAR testfile2W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','2','.','t','x','t',0};
    static const WCHAR *testfilesW[5] = { testdir1W, testdir2W, testdir3W, testfile1W, testfile2W };

    if(!pSHCreateShellItemArrayFromShellItem)
    {
        win_skip("No SHCreateShellItemArrayFromShellItem, skipping test...\n");
        return;
    }

    CreateFilesFolders();
    CreateDirectoryA(".\\testdir\\testdir3", ((void*)0));

    SHGetDesktopFolder(&pdesktopsf);

    GetCurrentDirectoryW(MAX_PATH, curdirW);
    myPathAddBackslashW(curdirW);

    for(i = 0; i < 5; i++)
    {
        lstrcpyW(buf, curdirW);
        lstrcatW(buf, testfilesW[i]);
        hr = IShellFolder_ParseDisplayName(pdesktopsf, ((void*)0), ((void*)0), buf, ((void*)0), (LPITEMIDLIST*)&pidl_array[i], ((void*)0));
        ok(hr == S_OK, "got 0x%08x\n", hr);
    }
    IShellFolder_Release(pdesktopsf);

    hr = pSHCreateShellItemArrayFromIDLists(2, pidl_array, &psia_folders1);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = pSHCreateShellItemArrayFromIDLists(2, &pidl_array[1], &psia_folders2);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = pSHCreateShellItemArrayFromIDLists(2, &pidl_array[3], &psia_files);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = pSHCreateShellItemArrayFromIDLists(4, &pidl_array[1], &psia_all);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    for(i = 0; i < 5; i++)
        ILFree((LPITEMIDLIST)pidl_array[i]);


    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_folders1, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    ok(hr == S_OK || broken(hr == E_UNEXPECTED) , "Got 0x%08x\n", hr);
    ok(attr == SFGAO_FOLDER || broken(attr == 0) , "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_folders1, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    ok(hr == S_OK || broken(hr == E_UNEXPECTED) , "Got 0x%08x\n", hr);
    ok(attr == SFGAO_FOLDER || broken(attr == 0) , "Got 0x%08x\n", attr);


    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_folders2, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(attr == SFGAO_FOLDER, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_files, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    ok(hr == S_FALSE || broken(hr == S_OK) , "Got 0x%08x\n", hr);
    ok(attr == 0, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_all, SIATTRIBFLAGS_AND, SFGAO_FOLDER, &attr);
    ok(hr == S_FALSE || broken(hr == S_OK) , "Got 0x%08x\n", hr);
    ok(attr == 0, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_folders2, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(attr == SFGAO_FOLDER, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_files, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    ok(hr == S_FALSE || broken(hr == S_OK) , "Got 0x%08x\n", hr);
    ok(attr == 0, "Got 0x%08x\n", attr);
    attr = 0xdeadbeef;
    hr = IShellItemArray_GetAttributes(psia_all, SIATTRIBFLAGS_OR, SFGAO_FOLDER, &attr);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(attr == SFGAO_FOLDER, "Got 0x%08x\n", attr);

    IShellItemArray_Release(psia_folders1);
    IShellItemArray_Release(psia_folders2);
    IShellItemArray_Release(psia_files);
    IShellItemArray_Release(psia_all);

    RemoveDirectoryA(".\\testdir\\testdir3");
    Cleanup();
}
