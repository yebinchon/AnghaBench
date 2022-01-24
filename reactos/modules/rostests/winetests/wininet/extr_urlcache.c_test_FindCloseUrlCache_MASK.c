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
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ ERROR_INVALID_HANDLE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL r;
    DWORD err;

    FUNC2(0xdeadbeef);
    r = FUNC0(NULL);
    err = FUNC1();
    FUNC3(0 == r, "expected 0, got %d\n", r);
    FUNC3(ERROR_INVALID_HANDLE == err, "expected %d, got %d\n", ERROR_INVALID_HANDLE, err);
}