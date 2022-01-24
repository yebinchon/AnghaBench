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
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  LPCTSTR ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int INVALID_FILE_ATTRIBUTES ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char*,int,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC7(LPCTSTR filename, DWORD attributes)
{
	HANDLE file;
	char buffer[4096];
	DWORD read;
	int c;
	DWORD diskattr;

	file = FUNC1(filename,
	                  GENERIC_READ,
	                  0,
	                  NULL,
	                  OPEN_EXISTING,
	                  0,
	                  0);

	if (INVALID_HANDLE_VALUE == file) {
		FUNC6(stderr, "CreateFile failed with code %d\n", FUNC3());
		FUNC5(1);
	}

	if (! FUNC4(file, buffer, sizeof(buffer), &read, NULL)) {
		FUNC6(stderr, "ReadFile failed with code %d\n", FUNC3());
		FUNC5(1);
	}
	if (read != sizeof(buffer)) {
		FUNC6(stderr, "Trying to read %u bytes but got %d bytes\n", sizeof(buffer), read);
		FUNC5(1);
	}
	for(c = 0; c < sizeof(buffer); c++) {
		if (buffer[c] != (char) c) {
			FUNC6(stderr, "File contents changed at position %u\n", c);
			FUNC5(1);
		}
	}

	FUNC0(file);

	diskattr = FUNC2(filename);
	if (INVALID_FILE_ATTRIBUTES == diskattr) {
		FUNC6(stderr, "GetFileAttributes failed with code %d\n", FUNC3());
		FUNC5(1);
	}
	if (diskattr != attributes) {
		FUNC6(stderr, "Attribute mismatch, expected 0x%08x found 0x%08x\n", attributes, diskattr);
		FUNC5(1);
	}
}