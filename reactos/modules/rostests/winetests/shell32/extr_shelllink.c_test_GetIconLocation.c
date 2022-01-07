
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mypath ;
typedef int buffer ;
typedef int LPVOID ;
typedef int LPITEMIDLIST ;
typedef int IShellLinkW ;
typedef int IShellLinkA ;
typedef int HRESULT ;


 int CLSCTX_INPROC_SERVER ;
 int CLSID_ShellLink ;
 int CoCreateInstance (int *,int *,int ,int *,int *) ;
 int GetWindowsDirectoryA (char*,int) ;
 int IID_IShellLinkA ;
 int IID_IShellLinkW ;
 int INFOTIPSIZE ;
 int IShellLinkA_GetIconLocation (int *,char*,int,int*) ;
 int IShellLinkA_QueryInterface (int *,int *,void**) ;
 int IShellLinkA_Release (int *) ;
 int IShellLinkA_SetIDList (int *,int ) ;
 int IShellLinkA_SetIconLocation (int *,char const*,int) ;
 int IShellLinkA_SetPath (int *,char const*) ;
 int IShellLinkW_Release (int *) ;
 int MAX_PATH ;
 int SUCCEEDED (int) ;
 int S_FALSE ;
 int S_OK ;
 scalar_t__ lstrcmpiA (char*,char const*) ;
 int ok (int,char*,...) ;
 int pILFree (int ) ;
 int path_to_pidl (char*) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void test_GetIconLocation(void)
{
    IShellLinkW *slW;
    IShellLinkA *sl;
    const char *str;
    char buffer[INFOTIPSIZE], mypath[MAX_PATH];
    int i;
    HRESULT r;
    LPITEMIDLIST pidl;

    r = CoCreateInstance(&CLSID_ShellLink, ((void*)0), CLSCTX_INPROC_SERVER,
            &IID_IShellLinkA, (LPVOID*)&sl);
    ok(r == S_OK, "no IID_IShellLinkA (0x%08x)\n", r);
    if(r != S_OK)
        return;

    i = 0xdeadbeef;
    strcpy(buffer, "garbage");
    r = IShellLinkA_GetIconLocation(sl, buffer, sizeof(buffer), &i);
    ok(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    ok(*buffer == '\0', "GetIconLocation returned '%s'\n", buffer);
    ok(i == 0, "GetIconLocation returned %d\n", i);

    str = "c:\\some\\path";
    r = IShellLinkA_SetPath(sl, str);
    ok(r == S_FALSE || r == S_OK, "SetPath failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    strcpy(buffer, "garbage");
    r = IShellLinkA_GetIconLocation(sl, buffer, sizeof(buffer), &i);
    ok(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    ok(*buffer == '\0', "GetIconLocation returned '%s'\n", buffer);
    ok(i == 0, "GetIconLocation returned %d\n", i);

    GetWindowsDirectoryA(mypath, sizeof(mypath) - 12);
    strcat(mypath, "\\regedit.exe");
    pidl = path_to_pidl(mypath);
    r = IShellLinkA_SetIDList(sl, pidl);
    ok(r == S_OK, "SetPath failed (0x%08x)\n", r);
    pILFree(pidl);

    i = 0xdeadbeef;
    strcpy(buffer, "garbage");
    r = IShellLinkA_GetIconLocation(sl, buffer, sizeof(buffer), &i);
    ok(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    ok(*buffer == '\0', "GetIconLocation returned '%s'\n", buffer);
    ok(i == 0, "GetIconLocation returned %d\n", i);

    str = "c:\\nonexistent\\file";
    r = IShellLinkA_SetIconLocation(sl, str, 0xbabecafe);
    ok(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    r = IShellLinkA_GetIconLocation(sl, buffer, sizeof(buffer), &i);
    ok(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    ok(lstrcmpiA(buffer,str) == 0, "GetIconLocation returned '%s'\n", buffer);
    ok(i == 0xbabecafe, "GetIconLocation returned %#x.\n", i);

    r = IShellLinkA_SetIconLocation(sl, ((void*)0), 0xcafefe);
    ok(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    r = IShellLinkA_GetIconLocation(sl, buffer, sizeof(buffer), &i);
    ok(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    ok(!*buffer, "GetIconLocation returned '%s'\n", buffer);
    ok(i == 0xcafefe, "GetIconLocation returned %#x.\n", i);

    r = IShellLinkA_QueryInterface(sl, &IID_IShellLinkW, (void **)&slW);
    ok(SUCCEEDED(r), "Failed to get IShellLinkW, hr %#x.\n", r);

    str = "c:\\nonexistent\\file";
    r = IShellLinkA_SetIconLocation(sl, str, 0xbabecafe);
    ok(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    r = IShellLinkA_SetIconLocation(sl, ((void*)0), 0xcafefe);
    ok(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    r = IShellLinkA_GetIconLocation(sl, buffer, sizeof(buffer), &i);
    ok(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    ok(!*buffer, "GetIconLocation returned '%s'\n", buffer);
    ok(i == 0xcafefe, "GetIconLocation returned %#x.\n", i);

    IShellLinkW_Release(slW);
    IShellLinkA_Release(sl);
}
