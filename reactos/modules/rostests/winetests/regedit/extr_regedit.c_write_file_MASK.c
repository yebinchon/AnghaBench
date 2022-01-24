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
typedef  scalar_t__ HANDLE ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int FUNC3 (scalar_t__,void const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC5(const void *str, DWORD size)
{
    HANDLE file;
    BOOL ret;
    DWORD written;

    file = FUNC1("test.reg", GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
                       FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC4(file != INVALID_HANDLE_VALUE, "CreateFile failed: %u\n", FUNC2());
    if (file == INVALID_HANDLE_VALUE)
        return FALSE;

    ret = FUNC3(file, str, size, &written, NULL);
    FUNC4(ret, "WriteFile failed: %u\n", FUNC2());
    FUNC0(file);

    return ret;
}