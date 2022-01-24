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
typedef  scalar_t__ HANDLE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char*,char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(char drive_letter)
{
	HANDLE hDrive = INVALID_HANDLE_VALUE;
	BOOL r = FALSE;
	char logical_drive[] = "\\\\.\\#:";

	logical_drive[4] = drive_letter;
	hDrive = FUNC0(logical_drive, GENERIC_READ|GENERIC_WRITE, FILE_SHARE_READ|FILE_SHARE_WRITE,
		NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL);
	if (hDrive == INVALID_HANDLE_VALUE) {
		FUNC4("Failed to open %c: for flushing: %s", drive_letter, FUNC2());
		goto out;
	}
	r = FUNC1(hDrive);
	if (r == FALSE)
		FUNC4("Failed to flush %c: %s", drive_letter, FUNC2());

out:
	FUNC3(hDrive);
	return r;
}