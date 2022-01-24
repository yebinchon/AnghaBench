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
typedef  int /*<<< orphan*/  valueA ;
typedef  int /*<<< orphan*/  keyA ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CLSID ;
typedef  char const CHAR ;

/* Variables and functions */
 int FUNC0 (struct compat_value*) ; 
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_LOCAL_MACHINE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int,char const*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int,char const*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC7 (char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

__attribute__((used)) static void FUNC10(void)
{
    struct compat_value {
        CHAR nameA[30];
        DWORD value;
    };

    struct compat_value values[] = {
        { "OTNEEDSSFCACHE", 0x1 },
        { "NO_WEBVIEW", 0x2 },
        { "UNBINDABLE", 0x4 },
        { "PINDLL", 0x8 },
        { "NEEDSFILESYSANCESTOR", 0x10 },
        { "NOTAFILESYSTEM", 0x20 },
        { "CTXMENU_NOVERBS", 0x40 },
        { "CTXMENU_LIMITEDQI", 0x80 },
        { "COCREATESHELLFOLDERONLY", 0x100 },
        { "NEEDSSTORAGEANCESTOR", 0x200 },
        { "NOLEGACYWEBVIEW", 0x400 },
        { "CTXMENU_XPQCMFLAGS", 0x1000 },
        { "NOIPROPERTYSTORE", 0x2000 }
    };

    static const char compat_path[] = "Software\\Microsoft\\Windows\\CurrentVersion\\ShellCompatibility\\Objects";
    CHAR keyA[39]; /* {CLSID} */
    HKEY root;
    DWORD ret;
    int i;

    /* null args */
    ret = FUNC8(NULL, NULL);
    FUNC6(ret == 0, "got %d\n", ret);

    ret = FUNC4(HKEY_LOCAL_MACHINE, compat_path, &root);
    if (ret != ERROR_SUCCESS)
    {
        FUNC9("No compatibility class data found\n");
        return;
    }

    for (i = 0; FUNC2(root, i, keyA, sizeof(keyA)) == ERROR_SUCCESS; i++)
    {
        HKEY clsid_key;

        if (FUNC4(root, keyA, &clsid_key) == ERROR_SUCCESS)
        {
            CHAR valueA[30];
            DWORD expected = 0, got, length = sizeof(valueA);
            CLSID clsid;
            int v;

            for (v = 0; FUNC3(clsid_key, v, valueA, &length, NULL, NULL, NULL, NULL) == ERROR_SUCCESS; v++)
            {
                int j;

                for (j = 0; j < FUNC0(values); j++)
                    if (FUNC5(values[j].nameA, valueA) == 0)
                    {
                        expected |= values[j].value;
                        break;
                    }

                length = sizeof(valueA);
            }

            FUNC7(keyA, &clsid);
            got = FUNC8(NULL, &clsid);
            FUNC6(got == expected, "got 0x%08x, expected 0x%08x. Key %s\n", got, expected, keyA);

            FUNC1(clsid_key);
        }
    }

    FUNC1(root);
}