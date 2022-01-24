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
typedef  int ULONG ;
typedef  char* LPSTR ;
typedef  int /*<<< orphan*/  LPSECURITY_ATTRIBUTES ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ FUNC4 (char*) ; 

int FUNC5(int argc, char *argv[])
{
   HANDLE hMailslot;
   LPSTR lpszMailslotName = "\\\\.\\MAILSLOT\\mymailslot";
   LPSTR lpszTestMessage = "Mailslot test message!";
   DWORD cbLength, cbWritten;

   hMailslot = FUNC1(lpszMailslotName,
			  GENERIC_WRITE,
			  FILE_SHARE_READ,
			  (LPSECURITY_ATTRIBUTES)NULL,
			  OPEN_EXISTING,
			  FILE_ATTRIBUTE_NORMAL,
			  (HANDLE)NULL);
   FUNC3("hMailslot %x\n", (DWORD)hMailslot);
   if (hMailslot == INVALID_HANDLE_VALUE)
     {
	FUNC3("CreateFile() failed\n");
	return 0;
     }

   cbLength = (ULONG)FUNC4(lpszTestMessage)+1;

   FUNC2(hMailslot,
	     lpszTestMessage,
	     cbLength,
	     &cbWritten,
	     NULL);

   FUNC0(hMailslot);

   return 0;
}