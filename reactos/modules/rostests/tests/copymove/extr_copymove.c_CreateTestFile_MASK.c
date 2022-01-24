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
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int GENERIC_READ ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC8(LPCTSTR filename, DWORD attributes)
{
	HANDLE file;
	char buffer[4096];
	DWORD wrote;
	int c;

	FUNC2(filename);
	file = FUNC1(filename,
	                  GENERIC_READ | GENERIC_WRITE,
	                  0,
	                  NULL,
	                  CREATE_ALWAYS,
	                  0,
	                  0);

	if (INVALID_HANDLE_VALUE == file) {
		FUNC7(stderr, "CreateFile failed with code %d\n", FUNC3());
		FUNC6(1);
	}
	for(c = 0; c < sizeof(buffer); c++) {
		buffer[c] = (char) c;
	}
	if (! FUNC5(file, buffer, sizeof(buffer), &wrote, NULL)) {
		FUNC7(stderr, "WriteFile failed with code %d\n", FUNC3());
		FUNC6(1);
	}
	FUNC0(file);

	if (! FUNC4(filename, attributes)) {
		FUNC7(stderr, "SetFileAttributes failed with code %d\n", FUNC3());
		FUNC6(1);
	}
}