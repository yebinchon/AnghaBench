
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef char* LPCWSTR ;
typedef int LPBYTE ;
typedef scalar_t__ LONG ;
typedef scalar_t__ HKEY ;
typedef scalar_t__ DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_FILE_NOT_FOUND ;
 scalar_t__ ERROR_NOT_ENOUGH_MEMORY ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ FALSE ;
 int GetLastError () ;
 scalar_t__ GetSystemMetrics (int ) ;
 scalar_t__ HKEY_LOCAL_MACHINE ;
 scalar_t__ INVALID_RUNCMD_RETURN ;
 int KEY_ALL_ACCESS ;
 int KEY_READ ;
 scalar_t__ REG_SZ ;
 int RegCloseKey (scalar_t__) ;
 scalar_t__ RegDeleteValueW (scalar_t__,char*) ;
 scalar_t__ RegEnumValueW (scalar_t__,scalar_t__,char*,scalar_t__*,int ,scalar_t__*,int ,scalar_t__*) ;
 scalar_t__ RegOpenKeyExW (scalar_t__,char const*,int ,int ,scalar_t__*) ;
 scalar_t__ RegQueryInfoKeyW (scalar_t__,int *,int *,int *,int *,int *,int *,scalar_t__*,scalar_t__*,scalar_t__*,int *,int *) ;
 int SM_CLEANBOOT ;
 scalar_t__ TRUE ;
 int free (char*) ;
 char* malloc (scalar_t__) ;
 int printf (char*,...) ;
 scalar_t__ runCmd (char*,int *,scalar_t__,scalar_t__) ;
 int wprintf (char*,char*) ;

__attribute__((used)) static BOOL ProcessRunKeys(HKEY hkRoot, LPCWSTR szKeyName, BOOL bDelete,
        BOOL bSynchronous)
{
    static const WCHAR WINKEY_NAME[]={'S','o','f','t','w','a','r','e','\\',
        'M','i','c','r','o','s','o','f','t','\\','W','i','n','d','o','w','s','\\',
        'C','u','r','r','e','n','t','V','e','r','s','i','o','n',0};
    HKEY hkWin=((void*)0), hkRun=((void*)0);
    LONG res=ERROR_SUCCESS;
    DWORD i, nMaxCmdLine=0, nMaxValue=0;
    WCHAR *szCmdLine=((void*)0);
    WCHAR *szValue=((void*)0);

    if (hkRoot==HKEY_LOCAL_MACHINE)
        wprintf(L"processing %s entries under HKLM\n", szKeyName);
    else
        wprintf(L"processing %s entries under HKCU\n", szKeyName);

    if ((res=RegOpenKeyExW(hkRoot, WINKEY_NAME, 0, KEY_READ, &hkWin))!=ERROR_SUCCESS)
    {
        printf("RegOpenKey failed on Software\\Microsoft\\Windows\\CurrentVersion (%ld)\n",
                res);

        goto end;
    }

    if ((res=RegOpenKeyExW(hkWin, szKeyName, 0, bDelete?KEY_ALL_ACCESS:KEY_READ, &hkRun))!=
            ERROR_SUCCESS)
    {
        if (res==ERROR_FILE_NOT_FOUND)
        {
            printf("Key doesn't exist - nothing to be done\n");

            res=ERROR_SUCCESS;
        }
        else
            printf("RegOpenKey failed on run key (%ld)\n", res);

        goto end;
    }

    if ((res=RegQueryInfoKeyW(hkRun, ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), ((void*)0), &i, &nMaxValue,
                    &nMaxCmdLine, ((void*)0), ((void*)0)))!=ERROR_SUCCESS)
    {
        printf("Couldn't query key info (%ld)\n", res);

        goto end;
    }

    if (i==0)
    {
        printf("No commands to execute.\n");

        res=ERROR_SUCCESS;
        goto end;
    }

    if ((szCmdLine=malloc(nMaxCmdLine))==((void*)0))
    {
        printf("Couldn't allocate memory for the commands to be executed\n");

        res=ERROR_NOT_ENOUGH_MEMORY;
        goto end;
    }

    if ((szValue=malloc((++nMaxValue)*sizeof(*szValue)))==((void*)0))
    {
        printf("Couldn't allocate memory for the value names\n");

        free(szCmdLine);
        res=ERROR_NOT_ENOUGH_MEMORY;
        goto end;
    }

    while(i>0)
    {
        DWORD nValLength=nMaxValue, nDataLength=nMaxCmdLine;
        DWORD type;

        --i;

        if ((res=RegEnumValueW(hkRun, i, szValue, &nValLength, 0, &type,
                        (LPBYTE)szCmdLine, &nDataLength))!=ERROR_SUCCESS)
        {
            printf("Couldn't read in value %lu - %ld\n", i, res);

            continue;
        }


        if (GetSystemMetrics(SM_CLEANBOOT) && (szValue[0] != L'*')) continue;

        if (bDelete && (res=RegDeleteValueW(hkRun, szValue))!=ERROR_SUCCESS)
        {
            printf("Couldn't delete value - %lu, %ld. Running command anyways.\n", i, res);
        }

        if (type!=REG_SZ)
        {
            printf("Incorrect type of value #%lu (%lu)\n", i, type);

            continue;
        }

        if ((res=runCmd(szCmdLine, ((void*)0), bSynchronous, FALSE))==INVALID_RUNCMD_RETURN)
        {
            printf("Error running cmd #%lu (%ld)\n", i, GetLastError());
        }

        printf("Done processing cmd #%lu\n", i);
    }

    free(szValue);
    free(szCmdLine);
    res=ERROR_SUCCESS;

end:
    if (hkRun!=((void*)0))
        RegCloseKey(hkRun);
    if (hkWin!=((void*)0))
        RegCloseKey(hkWin);

    printf("done\n");

    return res==ERROR_SUCCESS?TRUE:FALSE;
}
