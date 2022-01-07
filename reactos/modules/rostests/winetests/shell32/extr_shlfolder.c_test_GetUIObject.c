
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPITEMIDLIST ;
typedef int LPCITEMIDLIST ;
typedef int IShellFolder ;
typedef int IContextMenu ;
typedef scalar_t__ HRESULT ;


 int Cleanup () ;
 int CreateFilesFolders () ;
 int FALSE ;
 int GetCurrentDirectoryW (int,char*) ;
 int IContextMenu_Release (int *) ;
 int IID_IContextMenu ;
 int IID_IShellFolder ;
 int ILFree (int ) ;
 scalar_t__ IShellFolder_GetUIObjectOf (int *,int *,int,int *,int *,int *,void**) ;
 scalar_t__ IShellFolder_ParseDisplayName (int *,int *,int *,char*,int *,int *,int ) ;
 int IShellFolder_Release (int *) ;
 int MAX_PATH ;
 scalar_t__ SHBindToParent (int ,int *,void**,int *) ;
 int SHGetDesktopFolder (int **) ;
 scalar_t__ S_OK ;
 int TRUE ;
 int lstrcatW (char*,char const*) ;
 int ok (int,char*,scalar_t__) ;
 int skip (char*) ;
 int test_contextmenu (int *,int ) ;

__attribute__((used)) static void test_GetUIObject(void)
{
    IShellFolder *psf_desktop;
    IContextMenu *pcm;
    LPITEMIDLIST pidl;
    HRESULT hr;
    WCHAR path[MAX_PATH];
    const WCHAR filename[] =
        {'\\','t','e','s','t','d','i','r','\\','t','e','s','t','1','.','t','x','t',0};
    LPCITEMIDLIST pidl_child;
    IShellFolder *psf;

    GetCurrentDirectoryW(MAX_PATH, path);
    if (!path[0])
    {
        skip("GetCurrentDirectoryW returned an empty string.\n");
        return;
    }
    lstrcatW(path, filename);
    SHGetDesktopFolder(&psf_desktop);

    CreateFilesFolders();

    hr = IShellFolder_ParseDisplayName(psf_desktop, ((void*)0), ((void*)0), path, ((void*)0), &pidl, 0);
    ok(hr == S_OK, "Got 0x%08x\n", hr);

    hr = SHBindToParent(pidl, &IID_IShellFolder, (void **)&psf, &pidl_child);
    ok(hr == S_OK, "Failed to bind to folder, hr %#x.\n", hr);


    hr = IShellFolder_GetUIObjectOf(psf, ((void*)0), 1, &pidl_child, &IID_IContextMenu, ((void*)0), (void **)&pcm);
    ok(hr == S_OK, "GetUIObjectOf() failed, hr %#x.\n", hr);
    test_contextmenu(pcm, FALSE);
    IContextMenu_Release(pcm);


    hr = IShellFolder_GetUIObjectOf(psf_desktop, ((void*)0), 0, ((void*)0), &IID_IContextMenu, ((void*)0), (void **)&pcm);
    ok(hr == S_OK, "GetUIObjectOf() failed, hr %#x.\n", hr);
    test_contextmenu(pcm, TRUE);
    IContextMenu_Release(pcm);

    IShellFolder_Release(psf);
    ILFree(pidl);

    IShellFolder_Release(psf_desktop);
    Cleanup();
}
