
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int SFGAOF ;
typedef int LPITEMIDLIST ;
typedef int IShellItem ;
typedef int IShellFolder ;
typedef int HRESULT ;


 int CSIDL_DESKTOP ;
 int Cleanup () ;
 int CreateFilesFolders () ;
 int E_FAIL ;
 scalar_t__ FAILED (int) ;
 int GetCurrentDirectoryW (int,char*) ;
 int ILFree (int ) ;
 int IShellFolder_ParseDisplayName (int *,int *,int *,char*,int *,int *,int *) ;
 int IShellFolder_Release (int *) ;
 int IShellItem_GetAttributes (int *,int,int*) ;
 int IShellItem_Release (int *) ;
 int MAX_PATH ;
 int SFGAO_FOLDER ;
 int SHGetDesktopFolder (int **) ;
 int SHGetSpecialFolderLocation (int *,int ,int *) ;
 scalar_t__ SUCCEEDED (int) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ broken (int) ;
 int lstrcatW (char*,char const*) ;
 int lstrcpyW (char*,char*) ;
 int myPathAddBackslashW (char*) ;
 int ok (int,char*,int) ;
 int pSHCreateShellItem (int *,int *,int ,int **) ;
 int skip (char*) ;

__attribute__((used)) static void test_ShellItemGetAttributes(void)
{
    IShellItem *psi, *psi_folder1, *psi_file1;
    IShellFolder *pdesktopsf;
    LPITEMIDLIST pidl_desktop, pidl;
    SFGAOF sfgao;
    HRESULT hr;
    WCHAR curdirW[MAX_PATH];
    WCHAR buf[MAX_PATH];
    static const WCHAR testdir1W[] = {'t','e','s','t','d','i','r',0};
    static const WCHAR testfile1W[] = {'t','e','s','t','d','i','r','\\','t','e','s','t','1','.','t','x','t',0};

    if(!pSHCreateShellItem)
    {
        skip("SHCreateShellItem missing.\n");
        return;
    }

    hr = SHGetSpecialFolderLocation(((void*)0), CSIDL_DESKTOP, &pidl_desktop);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    if(SUCCEEDED(hr))
    {
        hr = pSHCreateShellItem(((void*)0), ((void*)0), pidl_desktop, &psi);
        ok(hr == S_OK, "Got 0x%08x\n", hr);
        ILFree(pidl_desktop);
    }
    if(FAILED(hr))
    {
        skip("Skipping tests.\n");
        return;
    }

    if(0)
    {

        IShellItem_GetAttributes(psi, 0, ((void*)0));
    }


    sfgao = 0xdeadbeef;
    hr = IShellItem_GetAttributes(psi, SFGAO_FOLDER, &sfgao);
    ok(hr == S_OK || broken(hr == E_FAIL) , "Got 0x%08x\n", hr);
    ok(sfgao == SFGAO_FOLDER || broken(sfgao == 0) , "Got 0x%08x\n", sfgao);

    IShellItem_Release(psi);

    CreateFilesFolders();

    SHGetDesktopFolder(&pdesktopsf);

    GetCurrentDirectoryW(MAX_PATH, curdirW);
    myPathAddBackslashW(curdirW);

    lstrcpyW(buf, curdirW);
    lstrcatW(buf, testdir1W);
    hr = IShellFolder_ParseDisplayName(pdesktopsf, ((void*)0), ((void*)0), buf, ((void*)0), &pidl, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = pSHCreateShellItem(((void*)0), ((void*)0), pidl, &psi_folder1);
    ok(hr == S_OK, "Got 0x%08x\n", sfgao);
    ILFree(pidl);

    lstrcpyW(buf, curdirW);
    lstrcatW(buf, testfile1W);
    hr = IShellFolder_ParseDisplayName(pdesktopsf, ((void*)0), ((void*)0), buf, ((void*)0), &pidl, ((void*)0));
    ok(hr == S_OK, "got 0x%08x\n", hr);
    hr = pSHCreateShellItem(((void*)0), ((void*)0), pidl, &psi_file1);
    ok(hr == S_OK, "Got 0x%08x\n", sfgao);
    ILFree(pidl);

    IShellFolder_Release(pdesktopsf);

    sfgao = 0xdeadbeef;
    hr = IShellItem_GetAttributes(psi_folder1, 0, &sfgao);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(sfgao == 0, "Got 0x%08x\n", sfgao);

    sfgao = 0xdeadbeef;
    hr = IShellItem_GetAttributes(psi_folder1, SFGAO_FOLDER, &sfgao);
    ok(hr == S_OK, "Got 0x%08x\n", hr);
    ok(sfgao == SFGAO_FOLDER, "Got 0x%08x\n", sfgao);

    sfgao = 0xdeadbeef;
    hr = IShellItem_GetAttributes(psi_file1, SFGAO_FOLDER, &sfgao);
    ok(hr == S_FALSE, "Got 0x%08x\n", hr);
    ok(sfgao == 0, "Got 0x%08x\n", sfgao);

    IShellItem_Release(psi_folder1);
    IShellItem_Release(psi_file1);

    Cleanup();
}
