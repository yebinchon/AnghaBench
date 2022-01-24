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
typedef  int /*<<< orphan*/  VOID ;
typedef  scalar_t__ LPVOID ;
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ DWORD ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int BUFSIZE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ *,int,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (scalar_t__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 

VOID FUNC6 (LPVOID lpvParam)
{
   CHAR chRequest[BUFSIZE];
   CHAR chReply[BUFSIZE];
   DWORD cbBytesRead, cbReplyBytes, cbWritten;
   BOOL fSuccess;
   HANDLE hPipe;

   hPipe = (HANDLE)lpvParam;
   while (1)
     {
	fSuccess = FUNC4(hPipe,
			    chRequest,
			    BUFSIZE,
			    &cbBytesRead,
			    NULL);
	if (!fSuccess || cbBytesRead == 0)
	  break;

	FUNC3(chRequest, chReply, &cbReplyBytes);

	fSuccess = FUNC5(hPipe,
			     chReply,
			     cbReplyBytes,
			     &cbWritten,
			     NULL);
	if (!fSuccess || cbReplyBytes != cbWritten)
	  break;
    }

   FUNC2(hPipe);
   FUNC1(hPipe);
   FUNC0(hPipe);
}