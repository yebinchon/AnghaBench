#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ result; int /*<<< orphan*/  string; } ;
typedef  TYPE_1__ TEST ;
typedef  scalar_t__ DWORD ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int ERROR_INVALID_PARAMETER ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int,char*,char const*,int /*<<< orphan*/ ,int,char*,...) ; 

__attribute__((used)) static void FUNC2(const char *function, const TEST *ptest, int initial_value, BOOL result)
{
	DWORD LastError = FUNC0();
	DWORD CorrectError = (ptest->result ? 0xdeadbeef : ERROR_INVALID_PARAMETER);

	FUNC1(LastError == CorrectError, "%s(\"%s\"), 0x%02x: GetLastError() returned %d, should be %d\n", function, ptest->string, initial_value, LastError, CorrectError);
	FUNC1(result == ptest->result, "%s(\"%s\"), 0x%02x: return value should be %s\n", function, ptest->string, initial_value, ptest->result ? "TRUE" : "FALSE");
}