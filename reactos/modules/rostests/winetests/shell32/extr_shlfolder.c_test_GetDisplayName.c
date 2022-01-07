
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef char WCHAR ;
typedef int VOID ;
struct TYPE_20__ {scalar_t__ cb; } ;
struct TYPE_25__ {TYPE_1__ mkid; } ;
struct TYPE_22__ {int cb; int * abID; } ;
struct TYPE_24__ {TYPE_3__ mkid; } ;
struct TYPE_21__ {int member_0; } ;
struct TYPE_23__ {TYPE_2__ member_1; int member_0; } ;
typedef int STRRET ;
typedef TYPE_4__ SHITEMID ;
typedef int LPSHELLFOLDER ;
typedef TYPE_5__* LPITEMIDLIST ;
typedef TYPE_5__* LPCITEMIDLIST ;
typedef int IUnknown ;
typedef TYPE_7__ ITEMIDLIST ;
typedef int HRESULT ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;
typedef char CHAR ;
typedef int BYTE ;
typedef int BOOL ;


 int CP_ACP ;
 int CREATE_ALWAYS ;
 int CSIDL_PERSONAL ;
 int CloseHandle (scalar_t__) ;
 int CreateDirectoryA (char*,int *) ;
 scalar_t__ CreateFileA (char*,int ,int ,int *,int ,int ,int *) ;
 int DeleteFileA (char*) ;
 int ERROR_CANCELLED ;
 int ERROR_FILE_NOT_FOUND ;
 int E_INVALIDARG ;
 int E_NOTIMPL ;
 int E_OUTOFMEMORY ;
 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GENERIC_WRITE ;
 int GetFileAttributesA (char*) ;
 int GetLastError () ;
 int HRESULT_FROM_WIN32 (int ) ;
 int IID_IShellFolder ;
 int IID_IUnknown ;
 TYPE_5__* ILFindLastID (TYPE_5__*) ;
 int ILFree (TYPE_5__*) ;
 int INVALID_FILE_ATTRIBUTES ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int IShellFolder_BindToObject (int ,TYPE_5__*,int *,int *,int **) ;
 int IShellFolder_GetDisplayNameOf (int ,TYPE_5__*,int ,int *) ;
 int IShellFolder_ParseDisplayName (int ,int *,int *,char*,int *,TYPE_5__**,int *) ;
 int IShellFolder_Release (int ) ;
 int IShellFolder_SetNameOf (int ,int *,TYPE_5__*,char const*,int ,TYPE_5__**) ;
 int IUnknown_Release (int *) ;
 int MAX_PATH ;
 int MultiByteToWideChar (int ,int ,char*,int,char*,int) ;
 int RemoveDirectoryA (char*) ;
 int SHBindToParent (TYPE_5__*,int *,void**,TYPE_5__**) ;
 int SHGDN_FORPARSING ;
 int SHGDN_NORMAL ;
 int SHGetDesktopFolder (int *) ;
 int SHGetPathFromIDListW (TYPE_5__*,char*) ;
 int SHGetSpecialFolderPathA (int *,char*,int ,int ) ;
 int S_OK ;
 int StrRetToBufW (int *,TYPE_5__*,char*,int) ;
 scalar_t__ broken (int) ;
 int lstrcatA (char*,char const*) ;
 int lstrcmpA (char*,char const*) ;
 int lstrcmpW (char*,char const*) ;
 int lstrcmpiW (char*,char*) ;
 int lstrcpyA (char*,char*) ;
 int ok (int,char*,...) ;

__attribute__((used)) static void test_GetDisplayName(void)
{
    BOOL result;
    HRESULT hr;
    HANDLE hTestFile;
    WCHAR wszTestFile[MAX_PATH], wszTestFile2[MAX_PATH];
    char szTestFile[MAX_PATH], szTestDir[MAX_PATH];
    DWORD attr;
    STRRET strret;
    LPSHELLFOLDER psfDesktop, psfPersonal;
    IUnknown *psfFile;
    SHITEMID emptyitem = { 0, { 0 } };
    LPITEMIDLIST pidlTestFile, pidlEmpty = (LPITEMIDLIST)&emptyitem;
    LPCITEMIDLIST pidlLast;
    static const CHAR szFileName[] = "winetest.foo";
    static const WCHAR wszFileName[] = { 'w','i','n','e','t','e','s','t','.','f','o','o',0 };
    static const WCHAR wszDirName[] = { 'w','i','n','e','t','e','s','t',0 };


    WCHAR wszAbsoluteFilename[] = { 'C',':','\\','w','i','n','e','t','e','s','t', 0 };
    LPITEMIDLIST pidlNew;
    result = SHGetSpecialFolderPathA(((void*)0), szTestDir, CSIDL_PERSONAL, FALSE);
    ok(result, "SHGetSpecialFolderPathA failed! Last error: %u\n", GetLastError());
    if (!result) return;


    lstrcatA(szTestDir, "\\winetest");
    CreateDirectoryA(szTestDir, ((void*)0));
    attr=GetFileAttributesA(szTestDir);
    if (attr == INVALID_FILE_ATTRIBUTES || !(attr & FILE_ATTRIBUTE_DIRECTORY))
    {
        ok(0, "unable to create the '%s' directory\n", szTestDir);
        return;
    }

    lstrcpyA(szTestFile, szTestDir);
    lstrcatA(szTestFile, "\\");
    lstrcatA(szTestFile, szFileName);
    hTestFile = CreateFileA(szTestFile, GENERIC_WRITE, 0, ((void*)0), CREATE_ALWAYS, 0, ((void*)0));
    ok((hTestFile != INVALID_HANDLE_VALUE), "CreateFileA failed! Last error: %u\n", GetLastError());
    if (hTestFile == INVALID_HANDLE_VALUE) return;
    CloseHandle(hTestFile);


    hr = SHGetDesktopFolder(&psfDesktop);
    ok(hr == S_OK, "SHGetDesktopFolder failed! hr = %08x\n", hr);
    if (hr != S_OK) return;

    MultiByteToWideChar(CP_ACP, 0, szTestFile, -1, wszTestFile, MAX_PATH);

    hr = IShellFolder_ParseDisplayName(psfDesktop, ((void*)0), ((void*)0), wszTestFile, ((void*)0), &pidlTestFile, ((void*)0));
    ok(hr == S_OK, "Desktop->ParseDisplayName failed! hr = %08x\n", hr);
    if (hr != S_OK) {
        IShellFolder_Release(psfDesktop);
        return;
    }

    pidlLast = ILFindLastID(pidlTestFile);
    ok(pidlLast->mkid.cb >= 76, "Expected pidl length of at least 76, got %d.\n", pidlLast->mkid.cb);
    if (pidlLast->mkid.cb >= 28) {
        ok(!lstrcmpA((CHAR*)&pidlLast->mkid.abID[12], szFileName),
            "Filename should be stored as ansi-string at this position!\n");
    }

    if (pidlLast->mkid.cb >= 76) {
        ok(!lstrcmpW((WCHAR*)&pidlLast->mkid.abID[46], wszFileName) ||
            (pidlLast->mkid.cb >= 94 && !lstrcmpW((WCHAR*)&pidlLast->mkid.abID[64], wszFileName)) ||
            (pidlLast->mkid.cb >= 98 && !lstrcmpW((WCHAR*)&pidlLast->mkid.abID[68], wszFileName)) ||
            (pidlLast->mkid.cb >= 102 && !lstrcmpW((WCHAR*)&pidlLast->mkid.abID[72], wszFileName)),
            "Filename should be stored as wchar-string at this position!\n");
    }



    hr = IShellFolder_BindToObject(psfDesktop, pidlTestFile, ((void*)0), &IID_IUnknown, (VOID**)&psfFile);
    ok (hr == HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND) ||
        hr == E_NOTIMPL,
        "hr = %08x\n", hr);
    if (hr == S_OK) {
        IUnknown_Release(psfFile);
    }


    hr = SHBindToParent(pidlTestFile, &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    ok(hr == S_OK, "SHBindToParent failed! hr = %08x\n", hr);


    hr = IShellFolder_SetNameOf(psfPersonal, ((void*)0), pidlLast, wszDirName, SHGDN_NORMAL, &pidlNew);
    ok (hr == S_OK, "SetNameOf failed! hr = %08x\n", hr);

    ok (((ITEMIDLIST *)((BYTE *)pidlNew + pidlNew->mkid.cb))->mkid.cb == 0,
        "pidl returned from SetNameOf should be simple!\n");



    hr = IShellFolder_SetNameOf(psfPersonal, ((void*)0), pidlNew, wszAbsoluteFilename, SHGDN_FORPARSING, ((void*)0));
    ok (hr == HRESULT_FROM_WIN32(ERROR_CANCELLED), "SetNameOf succeeded! hr = %08x\n", hr);



    hr = IShellFolder_SetNameOf(psfPersonal, ((void*)0), pidlNew, wszFileName, SHGDN_FORPARSING, ((void*)0));
    ok (hr == S_OK, "SetNameOf failed! hr = %08x\n", hr);

    ILFree(pidlNew);
    IShellFolder_Release(psfPersonal);


    DeleteFileA(szTestFile);
    RemoveDirectoryA(szTestDir);


    result = SHGetPathFromIDListW(pidlTestFile, wszTestFile2);
    ok (result, "SHGetPathFromIDListW failed! Last error: %u\n", GetLastError());
    ok (!lstrcmpiW(wszTestFile, wszTestFile2), "SHGetPathFromIDListW returns incorrect path!\n");


    hr = SHBindToParent(((void*)0), &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    ok (hr == E_INVALIDARG || broken(hr == E_OUTOFMEMORY) ,
        "SHBindToParent(NULL) should fail! hr = %08x\n", hr);


    hr = SHBindToParent(pidlEmpty, &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    ok (hr == S_OK, "SHBindToParent(empty PIDL) should succeed! hr = %08x\n", hr);
    ok (pidlLast == pidlEmpty, "The last element of an empty PIDL should be the PIDL itself!\n");
    if (hr == S_OK)
        IShellFolder_Release(psfPersonal);


    hr = SHBindToParent(pidlTestFile, &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    ok (hr == S_OK, "SHBindToParent failed! hr = %08x\n", hr);
    if (hr != S_OK) {
        IShellFolder_Release(psfDesktop);
        return;
    }



    ok (ILFindLastID(pidlTestFile) == pidlLast,
                                "SHBindToParent doesn't return the last id of the pidl param!\n");

    hr = IShellFolder_GetDisplayNameOf(psfPersonal, pidlLast, SHGDN_FORPARSING, &strret);
    ok (hr == S_OK, "Personal->GetDisplayNameOf failed! hr = %08x\n", hr);
    if (hr != S_OK) {
        IShellFolder_Release(psfDesktop);
        IShellFolder_Release(psfPersonal);
        return;
    }

    hr = StrRetToBufW(&strret, pidlLast, wszTestFile2, MAX_PATH);
    ok (hr == S_OK, "StrRetToBufW failed! hr = %08x\n", hr);
    ok (!lstrcmpiW(wszTestFile, wszTestFile2), "GetDisplayNameOf returns incorrect path!\n");

    ILFree(pidlTestFile);
    IShellFolder_Release(psfDesktop);
    IShellFolder_Release(psfPersonal);
}
