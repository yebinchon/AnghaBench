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
typedef  int /*<<< orphan*/  LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_VARIABLE_NOT_FOUND ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(void)
{
    LPWSTR              env;
    char                tmp[16];
    int                 i;

    FUNC0(FUNC1(FALSE, &env) == STATUS_SUCCESS, "Creating environment\n");

    FUNC4(&env, "cat", "dog", STATUS_SUCCESS, 0);
    FUNC4(&env, "cat", "horse", STATUS_SUCCESS, 0);
    FUNC4(&env, "cat", "zz", STATUS_SUCCESS, 0);
    FUNC4(&env, "cat", NULL, STATUS_SUCCESS, 0);
    FUNC4(&env, "cat", NULL, STATUS_SUCCESS, STATUS_VARIABLE_NOT_FOUND);
    FUNC4(&env, "foo", "meouw", STATUS_SUCCESS, 0);
    FUNC4(&env, "me=too", "also", STATUS_SUCCESS, STATUS_INVALID_PARAMETER);
    FUNC4(&env, "me", "too=also", STATUS_SUCCESS, 0);
    FUNC4(&env, "=too", "also", STATUS_SUCCESS, 0);
    FUNC4(&env, "=", "also", STATUS_SUCCESS, 0);

    for (i = 0; i < 128; i++)
    {
        FUNC3(tmp, "zork%03d", i);
        FUNC4(&env, tmp, "is alive", STATUS_SUCCESS, 0);
    }

    for (i = 0; i < 128; i++)
    {
        FUNC3(tmp, "zork%03d", i);
        FUNC4(&env, tmp, NULL, STATUS_SUCCESS, 0);
    }
    FUNC4(&env, "fOo", NULL, STATUS_SUCCESS, 0);

    FUNC0(FUNC2(env) == STATUS_SUCCESS, "Destroying environment\n");
}