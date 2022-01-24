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
typedef  int /*<<< orphan*/  LPVOID ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 char* FUNC4 (char const*,scalar_t__,scalar_t__*) ; 
 scalar_t__ FUNC5 (char*,char const**) ; 
 int /*<<< orphan*/  FUNC6 (char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char const*,scalar_t__,char const*,scalar_t__) ; 

__attribute__((used)) static void FUNC8(const char *cmd_data, DWORD cmd_size, const char *exp_data, DWORD exp_size)
{
    const char *out_data, *actual_cmd_data;
    DWORD out_size, actual_cmd_size;

    actual_cmd_data = FUNC4(cmd_data, cmd_size, &actual_cmd_size);
    if(!actual_cmd_size || !actual_cmd_data)
        goto cleanup;

    if(!FUNC6(actual_cmd_data, actual_cmd_size))
        goto cleanup;

    out_size = FUNC5("test.out", &out_data);
    if(out_size) {
        FUNC7(out_data, out_size, exp_data, exp_size);
        FUNC3(out_data);
    }
    FUNC0("test.out");
    FUNC0("test.err");

cleanup:
    FUNC2(FUNC1(), 0, (LPVOID)actual_cmd_data);
}