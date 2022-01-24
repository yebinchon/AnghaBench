#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  mypath ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  LPVOID ;
typedef  int /*<<< orphan*/  LPITEMIDLIST ;
typedef  int /*<<< orphan*/  IShellLinkW ;
typedef  int /*<<< orphan*/  IShellLinkA ;
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_ShellLink ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  IID_IShellLinkA ; 
 int /*<<< orphan*/  IID_IShellLinkW ; 
 int INFOTIPSIZE ; 
 int FUNC2 (int /*<<< orphan*/ *,char*,int,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int MAX_PATH ; 
 int FUNC9 (int) ; 
 int S_FALSE ; 
 int S_OK ; 
 scalar_t__ FUNC10 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 

__attribute__((used)) static void FUNC16(void)
{
    IShellLinkW *slW;
    IShellLinkA *sl;
    const char *str;
    char buffer[INFOTIPSIZE], mypath[MAX_PATH];
    int i;
    HRESULT r;
    LPITEMIDLIST pidl;

    r = FUNC0(&CLSID_ShellLink, NULL, CLSCTX_INPROC_SERVER,
            &IID_IShellLinkA, (LPVOID*)&sl);
    FUNC11(r == S_OK, "no IID_IShellLinkA (0x%08x)\n", r);
    if(r != S_OK)
        return;

    i = 0xdeadbeef;
    FUNC15(buffer, "garbage");
    r = FUNC2(sl, buffer, sizeof(buffer), &i);
    FUNC11(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    FUNC11(*buffer == '\0', "GetIconLocation returned '%s'\n", buffer);
    FUNC11(i == 0, "GetIconLocation returned %d\n", i);

    str = "c:\\some\\path";
    r = FUNC7(sl, str);
    FUNC11(r == S_FALSE || r == S_OK, "SetPath failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    FUNC15(buffer, "garbage");
    r = FUNC2(sl, buffer, sizeof(buffer), &i);
    FUNC11(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    FUNC11(*buffer == '\0', "GetIconLocation returned '%s'\n", buffer);
    FUNC11(i == 0, "GetIconLocation returned %d\n", i);

    FUNC1(mypath, sizeof(mypath) - 12);
    FUNC14(mypath, "\\regedit.exe");
    pidl = FUNC13(mypath);
    r = FUNC5(sl, pidl);
    FUNC11(r == S_OK, "SetPath failed (0x%08x)\n", r);
    FUNC12(pidl);

    i = 0xdeadbeef;
    FUNC15(buffer, "garbage");
    r = FUNC2(sl, buffer, sizeof(buffer), &i);
    FUNC11(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    FUNC11(*buffer == '\0', "GetIconLocation returned '%s'\n", buffer);
    FUNC11(i == 0, "GetIconLocation returned %d\n", i);

    str = "c:\\nonexistent\\file";
    r = FUNC6(sl, str, 0xbabecafe);
    FUNC11(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    r = FUNC2(sl, buffer, sizeof(buffer), &i);
    FUNC11(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    FUNC11(FUNC10(buffer,str) == 0, "GetIconLocation returned '%s'\n", buffer);
    FUNC11(i == 0xbabecafe, "GetIconLocation returned %#x.\n", i);

    r = FUNC6(sl, NULL, 0xcafefe);
    FUNC11(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    r = FUNC2(sl, buffer, sizeof(buffer), &i);
    FUNC11(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    FUNC11(!*buffer, "GetIconLocation returned '%s'\n", buffer);
    FUNC11(i == 0xcafefe, "GetIconLocation returned %#x.\n", i);

    r = FUNC3(sl, &IID_IShellLinkW, (void **)&slW);
    FUNC11(FUNC9(r), "Failed to get IShellLinkW, hr %#x.\n", r);

    str = "c:\\nonexistent\\file";
    r = FUNC6(sl, str, 0xbabecafe);
    FUNC11(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    r = FUNC6(sl, NULL, 0xcafefe);
    FUNC11(r == S_OK, "SetIconLocation failed (0x%08x)\n", r);

    i = 0xdeadbeef;
    r = FUNC2(sl, buffer, sizeof(buffer), &i);
    FUNC11(r == S_OK, "GetIconLocation failed (0x%08x)\n", r);
    FUNC11(!*buffer, "GetIconLocation returned '%s'\n", buffer);
    FUNC11(i == 0xcafefe, "GetIconLocation returned %#x.\n", i);

    FUNC8(slW);
    FUNC4(sl);
}