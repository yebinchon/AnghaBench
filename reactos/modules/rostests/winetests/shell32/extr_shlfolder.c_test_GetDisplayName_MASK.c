#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_7__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_20__ {scalar_t__ cb; } ;
struct TYPE_25__ {TYPE_1__ mkid; } ;
struct TYPE_22__ {int cb; int /*<<< orphan*/ * abID; } ;
struct TYPE_24__ {TYPE_3__ mkid; } ;
struct TYPE_21__ {int /*<<< orphan*/  member_0; } ;
struct TYPE_23__ {TYPE_2__ member_1; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  STRRET ;
typedef  TYPE_4__ SHITEMID ;
typedef  int /*<<< orphan*/  LPSHELLFOLDER ;
typedef  TYPE_5__* LPITEMIDLIST ;
typedef  TYPE_5__* LPCITEMIDLIST ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_7__ ITEMIDLIST ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  CSIDL_PERSONAL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ERROR_CANCELLED ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int /*<<< orphan*/  E_INVALIDARG ; 
 int /*<<< orphan*/  E_NOTIMPL ; 
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 int /*<<< orphan*/  FALSE ; 
 int FILE_ATTRIBUTE_DIRECTORY ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_IShellFolder ; 
 int /*<<< orphan*/  IID_IUnknown ; 
 TYPE_5__* FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int INVALID_FILE_ATTRIBUTES ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_5__*,char const*,int /*<<< orphan*/ ,TYPE_5__**) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,int /*<<< orphan*/ *,void**,TYPE_5__**) ; 
 int /*<<< orphan*/  SHGDN_FORPARSING ; 
 int /*<<< orphan*/  SHGDN_NORMAL ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,char*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_5__*,char*,int) ; 
 scalar_t__ FUNC22 (int) ; 
 int /*<<< orphan*/  FUNC23 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC24 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC25 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC26 (char*,char*) ; 
 int /*<<< orphan*/  FUNC27 (char*,char*) ; 
 int /*<<< orphan*/  FUNC28 (int,char*,...) ; 

__attribute__((used)) static void FUNC29(void)
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
    SHITEMID emptyitem = { 0, 0 };
    LPITEMIDLIST pidlTestFile, pidlEmpty = (LPITEMIDLIST)&emptyitem;
    LPCITEMIDLIST pidlLast;
    static const CHAR szFileName[] = "winetest.foo";
    static const WCHAR wszFileName[] = { 'w','i','n','e','t','e','s','t','.','f','o','o',0 };
    static const WCHAR wszDirName[] = { 'w','i','n','e','t','e','s','t',0 };

    /* It's ok to use this fixed path. Call will fail anyway. */
    WCHAR wszAbsoluteFilename[] = { 'C',':','\\','w','i','n','e','t','e','s','t', 0 };
    LPITEMIDLIST pidlNew;

    /* I'm trying to figure if there is a functional difference between calling
     * SHGetPathFromIDListW and calling GetDisplayNameOf(SHGDN_FORPARSING) after
     * binding to the shellfolder. One thing I thought of was that perhaps 
     * SHGetPathFromIDListW would be able to get the path to a file, which does
     * not exist anymore, while the other method wouldn't. It turns out there's
     * no functional difference in this respect.
     */

    /* First creating a directory in MyDocuments and a file in this directory. */
    result = FUNC20(NULL, szTestDir, CSIDL_PERSONAL, FALSE);
    FUNC28(result, "SHGetSpecialFolderPathA failed! Last error: %u\n", FUNC5());
    if (!result) return;

    /* Use ANSI file functions so this works on Windows 9x */
    FUNC23(szTestDir, "\\winetest");
    FUNC1(szTestDir, NULL);
    attr=FUNC4(szTestDir);
    if (attr == INVALID_FILE_ATTRIBUTES || !(attr & FILE_ATTRIBUTE_DIRECTORY))
    {
        FUNC28(0, "unable to create the '%s' directory\n", szTestDir);
        return;
    }

    FUNC27(szTestFile, szTestDir);
    FUNC23(szTestFile, "\\");
    FUNC23(szTestFile, szFileName);
    hTestFile = FUNC2(szTestFile, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
    FUNC28((hTestFile != INVALID_HANDLE_VALUE), "CreateFileA failed! Last error: %u\n", FUNC5());
    if (hTestFile == INVALID_HANDLE_VALUE) return;
    FUNC0(hTestFile);

    /* Getting an itemidlist for the file. */
    hr = FUNC18(&psfDesktop);
    FUNC28(hr == S_OK, "SHGetDesktopFolder failed! hr = %08x\n", hr);
    if (hr != S_OK) return;

    FUNC15(CP_ACP, 0, szTestFile, -1, wszTestFile, MAX_PATH);

    hr = FUNC11(psfDesktop, NULL, NULL, wszTestFile, NULL, &pidlTestFile, NULL);
    FUNC28(hr == S_OK, "Desktop->ParseDisplayName failed! hr = %08x\n", hr);
    if (hr != S_OK) {
        FUNC12(psfDesktop);
        return;
    }

    pidlLast = FUNC7(pidlTestFile);
    FUNC28(pidlLast->mkid.cb >= 76, "Expected pidl length of at least 76, got %d.\n", pidlLast->mkid.cb);
    if (pidlLast->mkid.cb >= 28) {
        FUNC28(!FUNC24((CHAR*)&pidlLast->mkid.abID[12], szFileName),
            "Filename should be stored as ansi-string at this position!\n");
    }
    /* WinXP and up store the filenames as both ANSI and UNICODE in the pidls */
    if (pidlLast->mkid.cb >= 76) {
        FUNC28(!FUNC25((WCHAR*)&pidlLast->mkid.abID[46], wszFileName) ||
            (pidlLast->mkid.cb >= 94 && !FUNC25((WCHAR*)&pidlLast->mkid.abID[64], wszFileName)) ||  /* Vista */
            (pidlLast->mkid.cb >= 98 && !FUNC25((WCHAR*)&pidlLast->mkid.abID[68], wszFileName)) ||  /* Win7 */
            (pidlLast->mkid.cb >= 102 && !FUNC25((WCHAR*)&pidlLast->mkid.abID[72], wszFileName)),   /* Win8 */
            "Filename should be stored as wchar-string at this position!\n");
    }
    
    /* It seems as if we cannot bind to regular files on windows, but only directories. 
     */
    hr = FUNC9(psfDesktop, pidlTestFile, NULL, &IID_IUnknown, (VOID**)&psfFile);
    FUNC28 (hr == FUNC6(ERROR_FILE_NOT_FOUND) ||
        hr == E_NOTIMPL, /* Vista */
        "hr = %08x\n", hr);
    if (hr == S_OK) {
        FUNC14(psfFile);
    }

    /* Some tests for IShellFolder::SetNameOf */
    hr = FUNC17(pidlTestFile, &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    FUNC28(hr == S_OK, "SHBindToParent failed! hr = %08x\n", hr);

    /* The pidl returned through the last parameter of SetNameOf is a simple one. */
    hr = FUNC13(psfPersonal, NULL, pidlLast, wszDirName, SHGDN_NORMAL, &pidlNew);
    FUNC28 (hr == S_OK, "SetNameOf failed! hr = %08x\n", hr);

    FUNC28 (((ITEMIDLIST *)((BYTE *)pidlNew + pidlNew->mkid.cb))->mkid.cb == 0,
        "pidl returned from SetNameOf should be simple!\n");

    /* Passing an absolute path to SetNameOf fails. The HRESULT code indicates that SetNameOf
     * is implemented on top of SHFileOperation in WinXP. */
    hr = FUNC13(psfPersonal, NULL, pidlNew, wszAbsoluteFilename, SHGDN_FORPARSING, NULL);
    FUNC28 (hr == FUNC6(ERROR_CANCELLED), "SetNameOf succeeded! hr = %08x\n", hr);

    /* Rename the file back to its original name. SetNameOf ignores the fact, that the
     * SHGDN flags specify an absolute path. */
    hr = FUNC13(psfPersonal, NULL, pidlNew, wszFileName, SHGDN_FORPARSING, NULL);
    FUNC28 (hr == S_OK, "SetNameOf failed! hr = %08x\n", hr);

    FUNC8(pidlNew);
    FUNC12(psfPersonal);

    /* Deleting the file and the directory */
    FUNC3(szTestFile);
    FUNC16(szTestDir);

    /* SHGetPathFromIDListW still works, although the file is not present anymore. */
    result = FUNC19(pidlTestFile, wszTestFile2);
    FUNC28 (result, "SHGetPathFromIDListW failed! Last error: %u\n", FUNC5());
    FUNC28 (!FUNC26(wszTestFile, wszTestFile2), "SHGetPathFromIDListW returns incorrect path!\n");

    /* SHBindToParent fails, if called with a NULL PIDL. */
    hr = FUNC17(NULL, &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    FUNC28 (hr == E_INVALIDARG || FUNC22(hr == E_OUTOFMEMORY) /* XP */,
        "SHBindToParent(NULL) should fail! hr = %08x\n", hr);

    /* But it succeeds with an empty PIDL. */
    hr = FUNC17(pidlEmpty, &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    FUNC28 (hr == S_OK, "SHBindToParent(empty PIDL) should succeed! hr = %08x\n", hr);
    FUNC28 (pidlLast == pidlEmpty, "The last element of an empty PIDL should be the PIDL itself!\n");
    if (hr == S_OK)
        FUNC12(psfPersonal);

    /* Binding to the folder and querying the display name of the file also works. */
    hr = FUNC17(pidlTestFile, &IID_IShellFolder, (void **)&psfPersonal, &pidlLast);
    FUNC28 (hr == S_OK, "SHBindToParent failed! hr = %08x\n", hr);
    if (hr != S_OK) {
        FUNC12(psfDesktop);
        return;
    }

    /* This test shows that Windows doesn't allocate a new pidlLast, but returns a pointer into
     * pidlTestFile (In accordance with MSDN). */
    FUNC28 (FUNC7(pidlTestFile) == pidlLast,
                                "SHBindToParent doesn't return the last id of the pidl param!\n");

    hr = FUNC10(psfPersonal, pidlLast, SHGDN_FORPARSING, &strret);
    FUNC28 (hr == S_OK, "Personal->GetDisplayNameOf failed! hr = %08x\n", hr);
    if (hr != S_OK) {
        FUNC12(psfDesktop);
        FUNC12(psfPersonal);
        return;
    }

    hr = FUNC21(&strret, pidlLast, wszTestFile2, MAX_PATH);
    FUNC28 (hr == S_OK, "StrRetToBufW failed! hr = %08x\n", hr);
    FUNC28 (!FUNC26(wszTestFile, wszTestFile2), "GetDisplayNameOf returns incorrect path!\n");

    FUNC8(pidlTestFile);
    FUNC12(psfDesktop);
    FUNC12(psfPersonal);
}