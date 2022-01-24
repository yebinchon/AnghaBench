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
typedef  char WCHAR ;
typedef  char* LPCWSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  scalar_t__ LONG ;
typedef  scalar_t__ HKEY ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_FILE_NOT_FOUND ; 
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ; 
 scalar_t__ ERROR_SUCCESS ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ HKEY_LOCAL_MACHINE ; 
 scalar_t__ INVALID_RUNCMD_RETURN ; 
 int /*<<< orphan*/  KEY_ALL_ACCESS ; 
 int /*<<< orphan*/  KEY_READ ; 
 scalar_t__ REG_SZ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,char*,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC5 (scalar_t__,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SM_CLEANBOOT ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 
 scalar_t__ FUNC10 (char*,int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*) ; 

__attribute__((used)) static BOOL FUNC12(HKEY hkRoot, LPCWSTR szKeyName, BOOL bDelete,
        BOOL bSynchronous)
{
    static const WCHAR WINKEY_NAME[]={'S','o','f','t','w','a','r','e','\\',
        'M','i','c','r','o','s','o','f','t','\\','W','i','n','d','o','w','s','\\',
        'C','u','r','r','e','n','t','V','e','r','s','i','o','n',0};
    HKEY hkWin=NULL, hkRun=NULL;
    LONG res=ERROR_SUCCESS;
    DWORD i, nMaxCmdLine=0, nMaxValue=0;
    WCHAR *szCmdLine=NULL;
    WCHAR *szValue=NULL;

    if (hkRoot==HKEY_LOCAL_MACHINE)
        FUNC11(L"processing %s entries under HKLM\n", szKeyName);
    else
        FUNC11(L"processing %s entries under HKCU\n", szKeyName);

    if ((res=FUNC5(hkRoot, WINKEY_NAME, 0, KEY_READ, &hkWin))!=ERROR_SUCCESS)
    {
        FUNC9("RegOpenKey failed on Software\\Microsoft\\Windows\\CurrentVersion (%ld)\n",
                res);

        goto end;
    }

    if ((res=FUNC5(hkWin, szKeyName, 0, bDelete?KEY_ALL_ACCESS:KEY_READ, &hkRun))!=
            ERROR_SUCCESS)
    {
        if (res==ERROR_FILE_NOT_FOUND)
        {
            FUNC9("Key doesn't exist - nothing to be done\n");

            res=ERROR_SUCCESS;
        }
        else
            FUNC9("RegOpenKey failed on run key (%ld)\n", res);

        goto end;
    }

    if ((res=FUNC6(hkRun, NULL, NULL, NULL, NULL, NULL, NULL, &i, &nMaxValue,
                    &nMaxCmdLine, NULL, NULL))!=ERROR_SUCCESS)
    {
        FUNC9("Couldn't query key info (%ld)\n", res);

        goto end;
    }

    if (i==0)
    {
        FUNC9("No commands to execute.\n");

        res=ERROR_SUCCESS;
        goto end;
    }

    if ((szCmdLine=FUNC8(nMaxCmdLine))==NULL)
    {
        FUNC9("Couldn't allocate memory for the commands to be executed\n");

        res=ERROR_NOT_ENOUGH_MEMORY;
        goto end;
    }

    if ((szValue=FUNC8((++nMaxValue)*sizeof(*szValue)))==NULL)
    {
        FUNC9("Couldn't allocate memory for the value names\n");

        FUNC7(szCmdLine);
        res=ERROR_NOT_ENOUGH_MEMORY;
        goto end;
    }

    while(i>0)
    {
        DWORD nValLength=nMaxValue, nDataLength=nMaxCmdLine;
        DWORD type;

        --i;

        if ((res=FUNC4(hkRun, i, szValue, &nValLength, 0, &type,
                        (LPBYTE)szCmdLine, &nDataLength))!=ERROR_SUCCESS)
        {
            FUNC9("Couldn't read in value %lu - %ld\n", i, res);

            continue;
        }

        /* safe mode - force to run if prefixed with asterisk */
        if (FUNC1(SM_CLEANBOOT) && (szValue[0] != L'*')) continue;

        if (bDelete && (res=FUNC3(hkRun, szValue))!=ERROR_SUCCESS)
        {
            FUNC9("Couldn't delete value - %lu, %ld. Running command anyways.\n", i, res);
        }

        if (type!=REG_SZ)
        {
            FUNC9("Incorrect type of value #%lu (%lu)\n", i, type);

            continue;
        }

        if ((res=FUNC10(szCmdLine, NULL, bSynchronous, FALSE))==INVALID_RUNCMD_RETURN)
        {
            FUNC9("Error running cmd #%lu (%ld)\n", i, FUNC0());
        }

        FUNC9("Done processing cmd #%lu\n", i);
    }

    FUNC7(szValue);
    FUNC7(szCmdLine);
    res=ERROR_SUCCESS;

end:
    if (hkRun!=NULL)
        FUNC2(hkRun);
    if (hkWin!=NULL)
        FUNC2(hkWin);

    FUNC9("done\n");

    return res==ERROR_SUCCESS?TRUE:FALSE;
}