#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int time_t ;
typedef  int /*<<< orphan*/  ftp_session_t ;
struct TYPE_3__ {scalar_t__ nFileSizeLow; } ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  TYPE_1__ BY_HANDLE_FILE_INFORMATION ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int DATA_PACKET_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 

__attribute__((used)) static BOOL FUNC8(ftp_session_t *lpwfs, INT nDataSocket, HANDLE hFile)
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

    FUNC3("\n");
    lpszBuffer = FUNC4(sizeof(CHAR)*DATA_PACKET_SIZE);

    /* Get the size of the file. */
    FUNC1(hFile, &fi);
    FUNC7(&s_long_time);

    do
    {
        nBytesToSend = nBytesRead - nBytesSent;

        if (nBytesToSend <= 0)
        {
            /* Read data from file. */
            nBytesSent = 0;
            if (!FUNC2(hFile, lpszBuffer, DATA_PACKET_SIZE, &nBytesRead, 0))
            FUNC0("Failed reading from file\n");

            if (nBytesRead > 0)
                nBytesToSend = nBytesRead;
            else
                break;
        }

        nLen = DATA_PACKET_SIZE < nBytesToSend ?
            DATA_PACKET_SIZE : nBytesToSend;
        nRC  = FUNC6(nDataSocket, lpszBuffer, nLen, 0);

        if (nRC != -1)
        {
            nBytesSent += nRC;
            nTotalSent += nRC;
        }

        /* Do some computation to display the status. */
        FUNC7(&e_long_time);
        nSeconds = e_long_time - s_long_time;
        if( nSeconds / 60 > 0 )
        {
            FUNC3( "%d bytes of %d bytes (%d%%) in %d min %d sec estimated remaining time %d sec\n",
            nTotalSent, fi.nFileSizeLow, nTotalSent*100/fi.nFileSizeLow, nSeconds / 60,
            nSeconds % 60, (fi.nFileSizeLow - nTotalSent) * nSeconds / nTotalSent );
        }
        else
        {
            FUNC3( "%d bytes of %d bytes (%d%%) in %d sec estimated remaining time %d sec\n",
            nTotalSent, fi.nFileSizeLow, nTotalSent*100/fi.nFileSizeLow, nSeconds,
            (fi.nFileSizeLow - nTotalSent) * nSeconds / nTotalSent);
        }
    } while (nRC != -1);

    FUNC3("file transfer complete!\n");

    FUNC5(lpszBuffer);
    return nTotalSent;
}