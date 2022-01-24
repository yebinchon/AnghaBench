#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
struct TYPE_6__ {TYPE_1__ member_0; } ;
typedef  int* LPDWORD ;
typedef  int /*<<< orphan*/  LPCVOID ;
typedef  TYPE_2__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 
 int ERROR_SEVERITY_ERROR ; 
 scalar_t__ ERROR_SUCCESS ; 
 int ERROR_WRITE_FAULT ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FACILITY_STORAGE ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_BEGIN ; 
 int /*<<< orphan*/  FILE_CURRENT ; 
 int FUNC2 () ; 
 int LastWriteError ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_2__,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 int WRITE_TIMEOUT ; 
 int FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ *) ; 
 scalar_t__ large_drive ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

BOOL FUNC10(HANDLE hFile, LPCVOID lpBuffer, DWORD nNumberOfBytesToWrite,
	LPDWORD lpNumberOfBytesWritten, DWORD nNumRetries)
{
	DWORD nTry;
	BOOL readFilePointer;
	LARGE_INTEGER liFilePointer, liZero = { { 0,0 } };

	// Need to get the current file pointer in case we need to retry
	readFilePointer = FUNC4(hFile, liZero, &liFilePointer, FILE_CURRENT);
	if (!readFilePointer)
		FUNC9("Warning: Could not read file pointer %s", FUNC7());

	if (nNumRetries == 0)
		nNumRetries = 1;
	for (nTry = 1; nTry <= nNumRetries; nTry++) {
		// Need to rewind our file position on retry - if we can't even do that, just give up
		if ((nTry > 1) && (!FUNC4(hFile, liFilePointer, NULL, FILE_BEGIN))) {
			FUNC9("Could not set file pointer - Aborting");
			break;
		}
		if (FUNC8(hFile, lpBuffer, nNumberOfBytesToWrite, lpNumberOfBytesWritten, NULL)) {
			LastWriteError = 0;
			if (nNumberOfBytesToWrite == *lpNumberOfBytesWritten)
				return TRUE;
			// Some large drives return 0, even though all the data was written - See github #787 */
			if (large_drive && (*lpNumberOfBytesWritten == 0)) {
				FUNC9("Warning: Possible short write");
				return TRUE;
			}
			FUNC9("Wrote %d bytes but requested %d", *lpNumberOfBytesWritten, nNumberOfBytesToWrite);
		} else {
			FUNC9("Write error %s", FUNC7());
			LastWriteError = ERROR_SEVERITY_ERROR|FUNC1(FACILITY_STORAGE)|FUNC2();
		}
		// If we can't reposition for the next run, just abort
		if (!readFilePointer)
			break;
		if (nTry < nNumRetries) {
			FUNC9("Retrying in %d seconds...", WRITE_TIMEOUT / 1000);
			// Don't sit idly but use the downtime to check for conflicting processes...
			FUNC6(FUNC0(WRITE_TIMEOUT, FALSE));
		}
	}
	if (FUNC3(FUNC2()) == ERROR_SUCCESS)
		FUNC5(ERROR_SEVERITY_ERROR|FUNC1(FACILITY_STORAGE)|ERROR_WRITE_FAULT);
	return FALSE;
}