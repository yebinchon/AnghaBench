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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MAX_LOG_SIZE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * hLog ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 

void FUNC7(const char* str)
{
	wchar_t* wstr;
	wstr = FUNC6(str);
	FUNC4(wstr);
	if ((hLog != NULL) && (hLog != INVALID_HANDLE_VALUE)) {
		FUNC3(hLog, MAX_LOG_SIZE, MAX_LOG_SIZE);
		FUNC1(hLog, wstr);
		FUNC2(hLog, FUNC0(hLog), 0);
	}
	FUNC5(wstr);
}