#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ftp_session_t ;
typedef  int INT ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int DATA_PACKET_SIZE ; 
 int /*<<< orphan*/  ERROR_OUTOFMEMORY ; 
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC6(ftp_session_t *lpwfs, INT nDataSocket, HANDLE hFile)
{
    DWORD nBytesWritten;
    INT nRC = 0;
    CHAR *lpszBuffer;

    FUNC1("\n");

    lpszBuffer = FUNC3(sizeof(CHAR)*DATA_PACKET_SIZE);
    if (NULL == lpszBuffer)
    {
        FUNC0(ERROR_OUTOFMEMORY);
        return FALSE;
    }

    while (nRC != -1)
    {
        nRC = FUNC5(nDataSocket, lpszBuffer, DATA_PACKET_SIZE, 0);
        if (nRC != -1)
        {
            /* other side closed socket. */
            if (nRC == 0)
                goto recv_end;
            FUNC2(hFile, lpszBuffer, nRC, &nBytesWritten, NULL);
        }
    }

    FUNC1("Data transfer complete\n");

recv_end:
    FUNC4(lpszBuffer);
    return (nRC != -1);
}