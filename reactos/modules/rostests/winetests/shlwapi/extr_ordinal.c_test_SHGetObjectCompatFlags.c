
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int valueA ;
typedef int keyA ;
typedef int HKEY ;
typedef scalar_t__ DWORD ;
typedef int CLSID ;
typedef char const CHAR ;


 int ARRAY_SIZE (struct compat_value*) ;
 scalar_t__ ERROR_SUCCESS ;
 int HKEY_LOCAL_MACHINE ;
 int RegCloseKey (int ) ;
 scalar_t__ RegEnumKeyA (int ,int,char const*,int) ;
 scalar_t__ RegEnumValueA (int ,int,char const*,scalar_t__*,int *,int *,int *,int *) ;
 scalar_t__ RegOpenKeyA (int ,char const*,int *) ;
 scalar_t__ lstrcmpA (char const*,char const*) ;
 int ok (int,char*,scalar_t__,...) ;
 int pGUIDFromStringA (char const*,int *) ;
 scalar_t__ pSHGetObjectCompatFlags (int *,int *) ;
 int skip (char*) ;

__attribute__((used)) static void test_SHGetObjectCompatFlags(void)
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
    CHAR keyA[39];
    HKEY root;
    DWORD ret;
    int i;


    ret = pSHGetObjectCompatFlags(((void*)0), ((void*)0));
    ok(ret == 0, "got %d\n", ret);

    ret = RegOpenKeyA(HKEY_LOCAL_MACHINE, compat_path, &root);
    if (ret != ERROR_SUCCESS)
    {
        skip("No compatibility class data found\n");
        return;
    }

    for (i = 0; RegEnumKeyA(root, i, keyA, sizeof(keyA)) == ERROR_SUCCESS; i++)
    {
        HKEY clsid_key;

        if (RegOpenKeyA(root, keyA, &clsid_key) == ERROR_SUCCESS)
        {
            CHAR valueA[30];
            DWORD expected = 0, got, length = sizeof(valueA);
            CLSID clsid;
            int v;

            for (v = 0; RegEnumValueA(clsid_key, v, valueA, &length, ((void*)0), ((void*)0), ((void*)0), ((void*)0)) == ERROR_SUCCESS; v++)
            {
                int j;

                for (j = 0; j < ARRAY_SIZE(values); j++)
                    if (lstrcmpA(values[j].nameA, valueA) == 0)
                    {
                        expected |= values[j].value;
                        break;
                    }

                length = sizeof(valueA);
            }

            pGUIDFromStringA(keyA, &clsid);
            got = pSHGetObjectCompatFlags(((void*)0), &clsid);
            ok(got == expected, "got 0x%08x, expected 0x%08x. Key %s\n", got, expected, keyA);

            RegCloseKey(clsid_key);
        }
    }

    RegCloseKey(root);
}
