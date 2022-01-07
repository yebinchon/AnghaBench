
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dwFileAttributes; int cFileName; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int WCHAR ;
struct TYPE_7__ {int* lpExeList; } ;
typedef TYPE_2__* PMAIN_WND_INFO ;
typedef int* LPWSTR ;
typedef int INT ;
typedef scalar_t__ HANDLE ;


 int DisplayError (int ) ;
 int EXE_SEARCH_DIR ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ FindFirstFileW (int*,TYPE_1__*) ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_1__*) ;
 int GetCurrentDirectoryW (int,int*) ;
 int GetLastError () ;
 int GetNumberOfExesInFolder (int*) ;
 int GetProcessHeap () ;
 int* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int*) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int* wcschr (int*,int) ;
 int wcscpy (int*,int*) ;
 int wcslen (int*) ;
 int wcsncat (int*,int ,int) ;

__attribute__((used)) static INT
GetListOfTestExes(PMAIN_WND_INFO pInfo)
{
    HANDLE hFind;
    WIN32_FIND_DATAW findFileData;
    WCHAR szExePath[MAX_PATH];
    LPWSTR ptr;
    INT numFiles = 0;
    INT len;

    len = GetCurrentDirectoryW(MAX_PATH, szExePath);
    if (!len) return 0;

    wcsncat(szExePath, EXE_SEARCH_DIR, MAX_PATH - (len + 1));

    numFiles = GetNumberOfExesInFolder(szExePath);
    if (!numFiles) return 0;

    pInfo->lpExeList = HeapAlloc(GetProcessHeap(),
                                 0,
                                 numFiles * (MAX_PATH * sizeof(WCHAR)));
    if (!pInfo->lpExeList)
        return 0;

    hFind = FindFirstFileW(szExePath,
                           &findFileData);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        DisplayError(GetLastError());
        HeapFree(GetProcessHeap(), 0, pInfo->lpExeList);
        return 0;
    }


    ptr = wcschr(szExePath, L'*');
    if (ptr)
        *ptr = L'\0';


    ptr = pInfo->lpExeList;

    do
    {
        if (!(findFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
        {

            wcscpy(ptr, szExePath);


            len = MAX_PATH - (wcslen(ptr) + 1);
            wcsncat(ptr, findFileData.cFileName, len);


            ptr += MAX_PATH;
        }
    } while (FindNextFile(hFind, &findFileData) != 0);

    return numFiles;
}
