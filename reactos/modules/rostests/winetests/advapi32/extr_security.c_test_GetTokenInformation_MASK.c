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
typedef  int /*<<< orphan*/  is_app_container ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ ERROR_INVALID_FUNCTION ; 
 scalar_t__ ERROR_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int,int*) ; 
 int /*<<< orphan*/  MAXIMUM_ALLOWED ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TokenIsAppContainer ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 

__attribute__((used)) static void FUNC7(void)
{
    DWORD is_app_container, size;
    HANDLE token;
    BOOL ret;

    ret = FUNC4(FUNC1(), MAXIMUM_ALLOWED, &token);
    FUNC6(ret, "OpenProcessToken failed: %u\n", FUNC2());

    size = 0;
    is_app_container = 0xdeadbeef;
    ret = FUNC3(token, TokenIsAppContainer, &is_app_container,
                              sizeof(is_app_container), &size);
    FUNC6(ret || FUNC5(FUNC2() == ERROR_INVALID_PARAMETER ||
                     FUNC2() == ERROR_INVALID_FUNCTION), /* pre-win8 */
       "GetTokenInformation failed: %u\n", FUNC2());
    if(ret) {
        FUNC6(size == sizeof(is_app_container), "size = %u\n", size);
        FUNC6(!is_app_container, "is_app_container = %x\n", is_app_container);
    }

    FUNC0(token);
}