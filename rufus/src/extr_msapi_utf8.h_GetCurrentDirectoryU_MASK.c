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
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_DATA ; 
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  wlpBuffer ; 

__attribute__((used)) static __inline DWORD FUNC6(DWORD nBufferLength, char* lpBuffer)
{
	DWORD ret = 0, err = ERROR_INVALID_DATA;
	// coverity[returned_null]
	FUNC3(lpBuffer, nBufferLength);
	ret = FUNC0(nBufferLength, wlpBuffer);
	err = FUNC1();
	if ((ret != 0) && ((ret = FUNC4(wlpBuffer, lpBuffer, nBufferLength)) == 0)) {
		err = FUNC1();
	}
	FUNC5(lpBuffer);
	FUNC2(err);
	return ret;
}