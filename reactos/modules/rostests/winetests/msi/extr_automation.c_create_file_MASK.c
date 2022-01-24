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
typedef  scalar_t__ DWORD ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_CURRENT ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,char const*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (char const*) ; 

__attribute__((used)) static void FUNC8(const CHAR *name, DWORD size)
{
    HANDLE file;
    DWORD written, left;

    file = FUNC1(name, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, 0, NULL);
    FUNC6(file != INVALID_HANDLE_VALUE, "Failure to open file %s\n", name);
    FUNC4(file, name, FUNC7(name), &written, NULL);
    FUNC4(file, "\n", FUNC7("\n"), &written, NULL);

    left = size - FUNC5(name) - 1;

    FUNC3(file, left, NULL, FILE_CURRENT);
    FUNC2(file);

    FUNC0(file);
}