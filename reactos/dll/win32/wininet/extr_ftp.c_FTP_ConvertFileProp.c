
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WIN32_FIND_DATAW ;
struct TYPE_7__ {scalar_t__ lpszName; scalar_t__ bIsDirectory; int nSize; int tmLastModified; } ;
struct TYPE_6__ {int cFileName; int dwFileAttributes; int nFileSizeLow; scalar_t__ nFileSizeHigh; int ftLastAccessTime; int ftCreationTime; int ftLastWriteTime; } ;
typedef TYPE_1__* LPWIN32_FIND_DATAW ;
typedef TYPE_2__* LPFILEPROPERTIESW ;
typedef int BOOL ;


 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int MAX_PATH ;
 int SystemTimeToFileTime (int *,int *) ;
 int TRUE ;
 int ZeroMemory (TYPE_1__*,int) ;
 int lstrcpynW (int ,scalar_t__,int ) ;

__attribute__((used)) static BOOL FTP_ConvertFileProp(LPFILEPROPERTIESW lpafp, LPWIN32_FIND_DATAW lpFindFileData)
{
    BOOL bSuccess = FALSE;

    ZeroMemory(lpFindFileData, sizeof(WIN32_FIND_DATAW));

    if (lpafp)
    {
        SystemTimeToFileTime( &lpafp->tmLastModified, &lpFindFileData->ftLastAccessTime );
 lpFindFileData->ftLastWriteTime = lpFindFileData->ftLastAccessTime;
 lpFindFileData->ftCreationTime = lpFindFileData->ftLastAccessTime;


        lpFindFileData->nFileSizeHigh = 0;
        lpFindFileData->nFileSizeLow = lpafp->nSize;

 if (lpafp->bIsDirectory)
     lpFindFileData->dwFileAttributes |= FILE_ATTRIBUTE_DIRECTORY;

        if (lpafp->lpszName)
            lstrcpynW(lpFindFileData->cFileName, lpafp->lpszName, MAX_PATH);

 bSuccess = TRUE;
    }

    return bSuccess;
}
