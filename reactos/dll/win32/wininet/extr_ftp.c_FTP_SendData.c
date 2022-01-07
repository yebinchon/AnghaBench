
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef int ftp_session_t ;
struct TYPE_3__ {scalar_t__ nFileSizeLow; } ;
typedef int LONG ;
typedef int INT ;
typedef int HANDLE ;
typedef scalar_t__ DWORD ;
typedef int CHAR ;
typedef TYPE_1__ BY_HANDLE_FILE_INFORMATION ;
typedef scalar_t__ BOOL ;


 int DATA_PACKET_SIZE ;
 int ERR (char*) ;
 int GetFileInformationByHandle (int ,TYPE_1__*) ;
 int ReadFile (int ,int *,int,scalar_t__*,int ) ;
 int TRACE (char*,...) ;
 int * heap_alloc_zero (int) ;
 int heap_free (int *) ;
 int sock_send (int ,int *,scalar_t__,int ) ;
 int time (int*) ;

__attribute__((used)) static BOOL FTP_SendData(ftp_session_t *lpwfs, INT nDataSocket, HANDLE hFile)
{
    BY_HANDLE_FILE_INFORMATION fi;
    DWORD nBytesRead = 0;
    DWORD nBytesSent = 0;
    DWORD nTotalSent = 0;
    DWORD nBytesToSend, nLen;
    int nRC = 1;
    time_t s_long_time, e_long_time;
    LONG nSeconds;
    CHAR *lpszBuffer;

    TRACE("\n");
    lpszBuffer = heap_alloc_zero(sizeof(CHAR)*DATA_PACKET_SIZE);


    GetFileInformationByHandle(hFile, &fi);
    time(&s_long_time);

    do
    {
        nBytesToSend = nBytesRead - nBytesSent;

        if (nBytesToSend <= 0)
        {

            nBytesSent = 0;
            if (!ReadFile(hFile, lpszBuffer, DATA_PACKET_SIZE, &nBytesRead, 0))
            ERR("Failed reading from file\n");

            if (nBytesRead > 0)
                nBytesToSend = nBytesRead;
            else
                break;
        }

        nLen = DATA_PACKET_SIZE < nBytesToSend ?
            DATA_PACKET_SIZE : nBytesToSend;
        nRC = sock_send(nDataSocket, lpszBuffer, nLen, 0);

        if (nRC != -1)
        {
            nBytesSent += nRC;
            nTotalSent += nRC;
        }


        time(&e_long_time);
        nSeconds = e_long_time - s_long_time;
        if( nSeconds / 60 > 0 )
        {
            TRACE( "%d bytes of %d bytes (%d%%) in %d min %d sec estimated remaining time %d sec\n",
            nTotalSent, fi.nFileSizeLow, nTotalSent*100/fi.nFileSizeLow, nSeconds / 60,
            nSeconds % 60, (fi.nFileSizeLow - nTotalSent) * nSeconds / nTotalSent );
        }
        else
        {
            TRACE( "%d bytes of %d bytes (%d%%) in %d sec estimated remaining time %d sec\n",
            nTotalSent, fi.nFileSizeLow, nTotalSent*100/fi.nFileSizeLow, nSeconds,
            (fi.nFileSizeLow - nTotalSent) * nSeconds / nTotalSent);
        }
    } while (nRC != -1);

    TRACE("file transfer complete!\n");

    heap_free(lpszBuffer);
    return nTotalSent;
}
