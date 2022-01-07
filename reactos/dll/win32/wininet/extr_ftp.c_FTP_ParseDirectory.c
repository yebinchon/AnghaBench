
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ftp_session_t ;
typedef int * LPFILEPROPERTIESW ;
typedef int* LPDWORD ;
typedef int LPCWSTR ;
typedef int INT ;
typedef int FILEPROPERTIESW ;
typedef scalar_t__ BOOL ;


 int ERROR_NO_MORE_FILES ;
 scalar_t__ FALSE ;
 scalar_t__ FTP_ParseNextFile (int,int ,int *) ;
 int INTERNET_SetLastError (int ) ;
 int TRACE (char*) ;
 scalar_t__ TRUE ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int * heap_realloc (int *,int) ;
 int * heap_realloc_zero (int *,int) ;

__attribute__((used)) static BOOL FTP_ParseDirectory(ftp_session_t *lpwfs, INT nSocket, LPCWSTR lpszSearchFile,
    LPFILEPROPERTIESW *lpafp, LPDWORD dwfp)
{
    BOOL bSuccess = TRUE;
    INT sizeFilePropArray = 500;
    INT indexFilePropArray = -1;

    TRACE("\n");


    *lpafp = heap_alloc_zero(sizeof(FILEPROPERTIESW)*(sizeFilePropArray));
    if (!*lpafp)
        return FALSE;

    do {
        if (indexFilePropArray+1 >= sizeFilePropArray)
        {
            LPFILEPROPERTIESW tmpafp;

            sizeFilePropArray *= 2;
            tmpafp = heap_realloc_zero(*lpafp, sizeof(FILEPROPERTIESW)*sizeFilePropArray);
            if (((void*)0) == tmpafp)
            {
                bSuccess = FALSE;
                break;
            }

            *lpafp = tmpafp;
        }
        indexFilePropArray++;
    } while (FTP_ParseNextFile(nSocket, lpszSearchFile, &(*lpafp)[indexFilePropArray]));

    if (bSuccess && indexFilePropArray)
    {
        if (indexFilePropArray < sizeFilePropArray - 1)
        {
            LPFILEPROPERTIESW tmpafp;

            tmpafp = heap_realloc(*lpafp, sizeof(FILEPROPERTIESW)*indexFilePropArray);
            if (((void*)0) != tmpafp)
                *lpafp = tmpafp;
        }
        *dwfp = indexFilePropArray;
    }
    else
    {
        heap_free(*lpafp);
        INTERNET_SetLastError(ERROR_NO_MORE_FILES);
        bSuccess = FALSE;
    }

    return bSuccess;
}
