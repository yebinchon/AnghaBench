
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ftp_session_t ;
typedef int INT ;
typedef int HANDLE ;
typedef int DWORD ;
typedef int CHAR ;
typedef int BOOL ;


 int DATA_PACKET_SIZE ;
 int ERROR_OUTOFMEMORY ;
 int FALSE ;
 int INTERNET_SetLastError (int ) ;
 int TRACE (char*) ;
 int WriteFile (int ,int *,int,int *,int *) ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int sock_recv (int,int *,int,int ) ;

__attribute__((used)) static BOOL FTP_RetrieveFileData(ftp_session_t *lpwfs, INT nDataSocket, HANDLE hFile)
{
    DWORD nBytesWritten;
    INT nRC = 0;
    CHAR *lpszBuffer;

    TRACE("\n");

    lpszBuffer = heap_alloc_zero(sizeof(CHAR)*DATA_PACKET_SIZE);
    if (((void*)0) == lpszBuffer)
    {
        INTERNET_SetLastError(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    while (nRC != -1)
    {
        nRC = sock_recv(nDataSocket, lpszBuffer, DATA_PACKET_SIZE, 0);
        if (nRC != -1)
        {

            if (nRC == 0)
                goto recv_end;
            WriteFile(hFile, lpszBuffer, nRC, &nBytesWritten, ((void*)0));
        }
    }

    TRACE("Data transfer complete\n");

recv_end:
    heap_free(lpszBuffer);
    return (nRC != -1);
}
