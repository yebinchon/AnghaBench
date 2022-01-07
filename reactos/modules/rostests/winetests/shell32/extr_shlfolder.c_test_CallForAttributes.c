
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int LPSHELLFOLDER ;
typedef int LPITEMIDLIST ;
typedef int LPCITEMIDLIST ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef scalar_t__ HRESULT ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_CLASSES_ROOT ;
 int IMalloc_Free (int ,int ) ;
 scalar_t__ IShellFolder_GetAttributesOf (int ,int,int *,scalar_t__*) ;
 scalar_t__ IShellFolder_ParseDisplayName (int ,int *,int *,char*,int *,int *,int *) ;
 int IShellFolder_Release (int ) ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_DWORD ;
 int RegCloseKey (int ) ;
 scalar_t__ RegOpenKeyExW (int ,char const*,int ,int,int *) ;
 scalar_t__ RegQueryValueExW (int ,char const*,int *,int *,int ,scalar_t__*) ;
 int RegSetValueExW (int ,char const*,int ,int ,int ,int) ;
 scalar_t__ SFGAO_FILESYSTEM ;
 scalar_t__ SFGAO_GHOSTED ;
 scalar_t__ SFGAO_ISSLOW ;
 scalar_t__ SHGetDesktopFolder (int *) ;
 scalar_t__ S_OK ;
 int ok (int,char*,...) ;
 int ppM ;
 int skip (char*) ;

__attribute__((used)) static void test_CallForAttributes(void)
{
    HKEY hKey;
    LONG lResult;
    HRESULT hr;
    DWORD dwSize;
    LPSHELLFOLDER psfDesktop;
    LPITEMIDLIST pidlMyDocuments;
    DWORD dwAttributes, dwCallForAttributes, dwOrigAttributes, dwOrigCallForAttributes;
    static const WCHAR wszAttributes[] = { 'A','t','t','r','i','b','u','t','e','s',0 };
    static const WCHAR wszCallForAttributes[] = {
        'C','a','l','l','F','o','r','A','t','t','r','i','b','u','t','e','s',0 };
    static const WCHAR wszMyDocumentsKey[] = {
        'C','L','S','I','D','\\','{','4','5','0','D','8','F','B','A','-','A','D','2','5','-',
        '1','1','D','0','-','9','8','A','8','-','0','8','0','0','3','6','1','B','1','1','0','3','}',
        '\\','S','h','e','l','l','F','o','l','d','e','r',0 };
    WCHAR wszMyDocuments[] = {
        ':',':','{','4','5','0','D','8','F','B','A','-','A','D','2','5','-','1','1','D','0','-',
        '9','8','A','8','-','0','8','0','0','3','6','1','B','1','1','0','3','}',0 };
    hr = SHGetDesktopFolder(&psfDesktop);
    ok (hr == S_OK, "SHGetDesktopFolder failed! hr = %08x\n", hr);
    if (hr != S_OK) return;

    hr = IShellFolder_ParseDisplayName(psfDesktop, ((void*)0), ((void*)0), wszMyDocuments, ((void*)0),
                                       &pidlMyDocuments, ((void*)0));
    ok (hr == S_OK,
        "Desktop's ParseDisplayName failed to parse MyDocuments's CLSID! hr = %08x\n", hr);
    if (hr != S_OK) {
        IShellFolder_Release(psfDesktop);
        return;
    }

    dwAttributes = 0xffffffff;
    hr = IShellFolder_GetAttributesOf(psfDesktop, 1,
                                      (LPCITEMIDLIST*)&pidlMyDocuments, &dwAttributes);
    ok (hr == S_OK, "Desktop->GetAttributesOf(MyDocuments) failed! hr = %08x\n", hr);


    ok (dwAttributes & SFGAO_FILESYSTEM, "SFGAO_FILESYSTEM attribute is not set for MyDocuments!\n");
    ok (!(dwAttributes & SFGAO_ISSLOW), "SFGAO_ISSLOW attribute is set for MyDocuments!\n");
    ok (!(dwAttributes & SFGAO_GHOSTED), "SFGAO_GHOSTED attribute is set for MyDocuments!\n");




    lResult = RegOpenKeyExW(HKEY_CLASSES_ROOT, wszMyDocumentsKey, 0, KEY_WRITE|KEY_READ, &hKey);
    ok (lResult == ERROR_SUCCESS ||
        lResult == ERROR_ACCESS_DENIED,
        "RegOpenKeyEx failed! result: %08x\n", lResult);
    if (lResult != ERROR_SUCCESS) {
        if (lResult == ERROR_ACCESS_DENIED)
            skip("Not enough rights to open the registry key\n");
        IMalloc_Free(ppM, pidlMyDocuments);
        IShellFolder_Release(psfDesktop);
        return;
    }


    dwSize = sizeof(DWORD);
    lResult = RegQueryValueExW(hKey, wszAttributes, ((void*)0), ((void*)0), (LPBYTE)&dwOrigAttributes, &dwSize);
    ok (lResult == ERROR_SUCCESS, "RegQueryValueEx failed! result: %08x\n", lResult);
    if (lResult != ERROR_SUCCESS) {
        RegCloseKey(hKey);
        IMalloc_Free(ppM, pidlMyDocuments);
        IShellFolder_Release(psfDesktop);
        return;
    }


    dwSize = sizeof(DWORD);
    lResult = RegQueryValueExW(hKey, wszCallForAttributes, ((void*)0), ((void*)0),
                              (LPBYTE)&dwOrigCallForAttributes, &dwSize);
    ok (lResult == ERROR_SUCCESS, "RegQueryValueEx failed! result: %08x\n", lResult);
    if (lResult != ERROR_SUCCESS) {
        RegCloseKey(hKey);
        IMalloc_Free(ppM, pidlMyDocuments);
        IShellFolder_Release(psfDesktop);
        return;
    }




    dwAttributes = SFGAO_ISSLOW|SFGAO_GHOSTED;
    RegSetValueExW(hKey, wszAttributes, 0, REG_DWORD, (LPBYTE)&dwAttributes, sizeof(DWORD));
    dwCallForAttributes = SFGAO_ISSLOW|SFGAO_FILESYSTEM;
    RegSetValueExW(hKey, wszCallForAttributes, 0, REG_DWORD,
                   (LPBYTE)&dwCallForAttributes, sizeof(DWORD));






    dwAttributes = SFGAO_ISSLOW|SFGAO_GHOSTED|SFGAO_FILESYSTEM;
    hr = IShellFolder_GetAttributesOf(psfDesktop, 1,
                                      (LPCITEMIDLIST*)&pidlMyDocuments, &dwAttributes);
    ok (hr == S_OK, "Desktop->GetAttributesOf(MyDocuments) failed! hr = %08x\n", hr);
    if (hr == S_OK)
        ok (dwAttributes == SFGAO_FILESYSTEM,
            "Desktop->GetAttributes(MyDocuments) returned unexpected attributes: %08x\n",
            dwAttributes);


    RegSetValueExW(hKey, wszAttributes, 0, REG_DWORD, (LPBYTE)&dwOrigAttributes, sizeof(DWORD));
    RegSetValueExW(hKey, wszCallForAttributes, 0, REG_DWORD,
                   (LPBYTE)&dwOrigCallForAttributes, sizeof(DWORD));
    RegCloseKey(hKey);
    IMalloc_Free(ppM, pidlMyDocuments);
    IShellFolder_Release(psfDesktop);
}
