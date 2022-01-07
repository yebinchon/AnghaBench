
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WCHAR ;
typedef int * PUSHORT ;
typedef int PCPTABLEINFO ;
typedef scalar_t__ HANDLE ;
typedef int DWORD ;


 int CloseHandle (scalar_t__) ;
 scalar_t__ CreateFile (int const*,int ,int ,int *,int ,int ,int *) ;
 scalar_t__ FALSE ;
 int FILE_SHARE_READ ;
 int GENERIC_READ ;
 int GetFileSize (scalar_t__,int *) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int NLS_InitCodePageTable (int *,int ) ;
 int OPEN_EXISTING ;
 scalar_t__ ReadFile (scalar_t__,int *,int ,int *,int *) ;
 int free (int *) ;
 int * malloc (int ) ;

PUSHORT
NLS_ReadFile(const WCHAR *pszFile, PCPTABLEINFO CodePageTable)
{
    HANDLE hFile;

    hFile = CreateFile(pszFile, GENERIC_READ, FILE_SHARE_READ, ((void*)0), OPEN_EXISTING, 0, ((void*)0));
    if (hFile != INVALID_HANDLE_VALUE)
    {
        PUSHORT pData;
        DWORD dwRead;
        DWORD dwFileSize;

        dwFileSize = GetFileSize(hFile, ((void*)0));
        pData = malloc(dwFileSize);
        if (pData != ((void*)0))
        {
            if (ReadFile(hFile, pData, dwFileSize, &dwRead, ((void*)0)) != FALSE)
            {
                NLS_InitCodePageTable(pData, CodePageTable);
                CloseHandle(hFile);

                return pData;
            }

            free(pData);
        }

        CloseHandle(hFile);
    }

    return ((void*)0);
}
