
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dwFileAttributes; } ;
typedef TYPE_1__ WIN32_FIND_DATAW ;
typedef int LPWSTR ;
typedef scalar_t__ INT ;
typedef scalar_t__ HANDLE ;


 int DisplayError (int ) ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ FindFirstFileW (int ,TYPE_1__*) ;
 scalar_t__ FindNextFile (scalar_t__,TYPE_1__*) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;

__attribute__((used)) static INT
GetNumberOfExesInFolder(LPWSTR lpFolder)
{
    HANDLE hFind;
    WIN32_FIND_DATAW findFileData;
    INT numFiles = 0;

    hFind = FindFirstFileW(lpFolder,
                           &findFileData);
    if (hFind == INVALID_HANDLE_VALUE)
    {
        DisplayError(GetLastError());
        return 0;
    }

    do
    {
        if (!(findFileData.dwFileAttributes & FILE_ATTRIBUTE_DIRECTORY))
        {
            numFiles++;
        }
    } while (FindNextFile(hFind, &findFileData) != 0);

    return numFiles;
}
