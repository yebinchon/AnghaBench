#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  char WCHAR ;
struct TYPE_6__ {int /*<<< orphan*/  wMinorVerNum; int /*<<< orphan*/  wMajorVerNum; int /*<<< orphan*/  guid; } ;
struct TYPE_5__ {int /*<<< orphan*/  guid; } ;
typedef  TYPE_1__ TYPEATTR ;
typedef  TYPE_2__ TLIBATTR ;
typedef  int /*<<< orphan*/  OLECHAR ;
typedef  char* LPOLESTR ;
typedef  int /*<<< orphan*/  HKEY ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  const BYTE ;

/* Variables and functions */
 scalar_t__ ERROR_SUCCESS ; 
 int /*<<< orphan*/  HKEY_CLASSES_ROOT ; 
 int KEY_WRITE ; 
 char* ProxyStubClsid32W ; 
 char* ProxyStubClsidW ; 
 int /*<<< orphan*/  REG_SZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int) ; 
 char* TypeLibW ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(TLIBATTR *libattr, LPOLESTR name, TYPEATTR *tattr, DWORD flag)
{
    WCHAR keyName[60];
    HKEY key, subKey;

    static const WCHAR PSOA[] = {'{','0','0','0','2','0','4','2','4','-',
                                 '0','0','0','0','-','0','0','0','0','-','C','0','0','0','-',
                                 '0','0','0','0','0','0','0','0','0','0','4','6','}',0};

    FUNC4( &tattr->guid, keyName );
    if (FUNC1(HKEY_CLASSES_ROOT, keyName, 0, NULL, 0,
                        KEY_WRITE | flag, NULL, &key, NULL) == ERROR_SUCCESS)
    {
        if (name)
            FUNC2(key, NULL, 0, REG_SZ,
                           (BYTE *)name, (FUNC6(name)+1) * sizeof(OLECHAR));

        if (FUNC1(key, ProxyStubClsidW, 0, NULL, 0,
            KEY_WRITE | flag, NULL, &subKey, NULL) == ERROR_SUCCESS) {
            FUNC2(subKey, NULL, 0, REG_SZ,
                           (const BYTE *)PSOA, sizeof PSOA);
            FUNC0(subKey);
        }

        if (FUNC1(key, ProxyStubClsid32W, 0, NULL, 0,
            KEY_WRITE | flag, NULL, &subKey, NULL) == ERROR_SUCCESS) {
            FUNC2(subKey, NULL, 0, REG_SZ,
                           (const BYTE *)PSOA, sizeof PSOA);
            FUNC0(subKey);
        }

        if (FUNC1(key, TypeLibW, 0, NULL, 0,
            KEY_WRITE | flag, NULL, &subKey, NULL) == ERROR_SUCCESS)
        {
            WCHAR buffer[40];
            static const WCHAR fmtver[] = {'%','x','.','%','x',0 };
            static const WCHAR VersionW[] = {'V','e','r','s','i','o','n',0};

            FUNC3(&libattr->guid, buffer, 40);
            FUNC2(subKey, NULL, 0, REG_SZ,
                           (BYTE *)buffer, (FUNC6(buffer)+1) * sizeof(WCHAR));
            FUNC5(buffer, fmtver, libattr->wMajorVerNum, libattr->wMinorVerNum);
            FUNC2(subKey, VersionW, 0, REG_SZ,
                           (BYTE*)buffer, (FUNC6(buffer)+1) * sizeof(WCHAR));
            FUNC0(subKey);
        }

        FUNC0(key);
    }
}