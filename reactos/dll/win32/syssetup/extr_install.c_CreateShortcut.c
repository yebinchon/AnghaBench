
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int* LPWSTR ;
typedef int* LPCWSTR ;
typedef int INT ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ ARRAYSIZE (int*) ;
 int ASSERT (int ) ;
 int CreateShellLink (int*,int*,char*,int*,int*,int,int*) ;
 scalar_t__ ExpandEnvironmentStringsW (int*,int*,scalar_t__) ;
 scalar_t__ GetFullPathNameW (int*,scalar_t__,int*,int**) ;
 int MAX_PATH ;
 int* PathAddBackslash (int*) ;
 int SUCCEEDED (int ) ;
 int wcscpy (int*,int*) ;

__attribute__((used)) static BOOL
CreateShortcut(
    LPCWSTR pszFolder,
    LPCWSTR pszName,
    LPCWSTR pszCommand,
    LPCWSTR pszDescription,
    INT iIconNr,
    LPCWSTR pszWorkingDir)
{
    DWORD dwLen;
    LPWSTR Ptr;
    LPWSTR lpFilePart;
    WCHAR szPath[MAX_PATH];
    WCHAR szWorkingDirBuf[MAX_PATH];


    if (pszWorkingDir == ((void*)0) || pszWorkingDir[0] == L'\0')
    {
        if (ExpandEnvironmentStringsW(pszCommand, szPath, ARRAYSIZE(szPath)) == 0)
            wcscpy(szPath, pszCommand);

        dwLen = GetFullPathNameW(szPath,
                                 ARRAYSIZE(szWorkingDirBuf),
                                 szWorkingDirBuf,
                                 &lpFilePart);
        if (dwLen != 0 && dwLen <= ARRAYSIZE(szWorkingDirBuf))
        {


            ASSERT(lpFilePart != ((void*)0));




            *(lpFilePart--) = L'\0';
            if (!(lpFilePart - szWorkingDirBuf == 2 &&
                  szWorkingDirBuf[1] == L':' && szWorkingDirBuf[2] == L'\\'))
            {
                *lpFilePart = L'\0';
            }
            pszWorkingDir = szWorkingDirBuf;
        }
    }


    if (pszWorkingDir && pszWorkingDir[0] == L'\0')
        pszWorkingDir = ((void*)0);


    wcscpy(szPath, pszFolder);
    Ptr = PathAddBackslash(szPath);
    wcscpy(Ptr, pszName);


    return SUCCEEDED(CreateShellLink(szPath,
                                     pszCommand,
                                     L"",
                                     pszWorkingDir,

                                     (iIconNr != -1 ? pszCommand : ((void*)0)),
                                     iIconNr,
                                     pszDescription));
}
