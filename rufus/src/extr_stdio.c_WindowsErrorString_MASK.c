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
typedef  int /*<<< orphan*/  err_string ;
typedef  size_t DWORD ;

/* Variables and functions */
 scalar_t__ FACILITY_ITF ; 
 int FORMAT_MESSAGE_FROM_SYSTEM ; 
 int FORMAT_MESSAGE_IGNORE_INSERTS ; 
 size_t FUNC0 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,size_t,int /*<<< orphan*/ *) ; 
 size_t FUNC1 () ; 
 int /*<<< orphan*/ * FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  LANG_NEUTRAL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (size_t) ; 
 int /*<<< orphan*/  SUBLANG_DEFAULT ; 
 int /*<<< orphan*/  FUNC6 (size_t) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,size_t,...) ; 
 scalar_t__ FUNC9 (char*) ; 

const char *FUNC10(void)
{
	static char err_string[256] = { 0 };

	DWORD size, presize;
	DWORD error_code, format_error;

	error_code = FUNC1();
	// Check for VDS error codes
	if ((FUNC5(error_code) == FACILITY_ITF) && (FUNC2(error_code) != NULL)) {
		FUNC8(err_string, "[0x%08lX] %s", error_code, FUNC2(error_code));
		return err_string;
	}

	FUNC8(err_string, "[0x%08lX] ", error_code);
	presize = (DWORD)FUNC9(err_string);

	size = FUNC0(FORMAT_MESSAGE_FROM_SYSTEM|FORMAT_MESSAGE_IGNORE_INSERTS, NULL, FUNC3(error_code),
		FUNC4(LANG_NEUTRAL, SUBLANG_DEFAULT), &err_string[presize],
		sizeof(err_string)-(DWORD)FUNC9(err_string), NULL);
	if (size == 0) {
		format_error = FUNC1();
		if ((format_error) && (format_error != 0x13D))		// 0x13D, decode error, is returned for unknown codes
			FUNC8(err_string, "Windows error code 0x%08lX (FormatMessage error code 0x%08lX)",
				error_code, format_error);
		else
			FUNC8(err_string, "Unknown error 0x%08lX", error_code);
	} else {
		// Microsoft may suffix CRLF to error messages, which we need to remove...
		FUNC7(presize > 2);
		size += presize - 2;
		// Cannot underflow if the above assert passed since our first char is neither of the following
		while ((err_string[size] == 0x0D) || (err_string[size] == 0x0A) || (err_string[size] == 0x20))
			err_string[size--] = 0;
	}

	FUNC6(error_code);	// Make sure we don't change the errorcode on exit
	return err_string;
}