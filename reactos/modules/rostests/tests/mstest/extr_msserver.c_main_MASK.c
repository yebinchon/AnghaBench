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
typedef  char* LPTSTR ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  char CHAR ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  MAILSLOT_WAIT_FOREVER ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 

int FUNC4(int argc, char *argv[])
{
   HANDLE hMailslot;
   CHAR chBuf[512];
   BOOL fResult;
   DWORD cbRead;
   LPTSTR lpszMailslotName = "\\\\.\\mailslot\\mymailslot";

   hMailslot = FUNC1(lpszMailslotName,
			      512,
			      MAILSLOT_WAIT_FOREVER,
			      NULL);
for (;;)
{
   fResult = FUNC2(hMailslot,
		      chBuf,
		      512,
		      &cbRead,
		      NULL);
   if (fResult == FALSE)
     {
	FUNC3("ReadFile() failed!\n");
	FUNC0(hMailslot);
	return 0;
     }

   FUNC3("Data read: %s\n", chBuf);
}

   FUNC0(hMailslot);

   return 0;
}