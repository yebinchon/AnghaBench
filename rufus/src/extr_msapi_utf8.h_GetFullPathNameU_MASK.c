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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_DATA ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  wlpBuffer ; 
 int /*<<< orphan*/  wlpFileName ; 

__attribute__((used)) static __inline DWORD FUNC7(const char* lpFileName, DWORD nBufferLength, char* lpBuffer, char** lpFilePart)
{
	DWORD ret = 0, err = ERROR_INVALID_DATA;
	wchar_t* wlpFilePart;
	FUNC5(lpFileName);
	// coverity[returned_null]
	FUNC3(lpBuffer, nBufferLength);

	// lpFilePart is not supported
	if (lpFilePart != NULL) goto out;

	ret = FUNC0(wlpFileName, nBufferLength, wlpBuffer, &wlpFilePart);
	err = FUNC1();
	if ((ret != 0) && ((ret = FUNC4(wlpBuffer, lpBuffer, nBufferLength)) == 0)) {
		err = FUNC1();
	}

out:
	FUNC6(lpBuffer);
	FUNC6(lpFileName);
	FUNC2(err);
	return ret;
}