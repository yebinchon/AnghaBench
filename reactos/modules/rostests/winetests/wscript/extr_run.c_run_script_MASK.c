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
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int MAX_PATH ; 
 int FUNC4 (scalar_t__,char const*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,char const*) ; 
 char* FUNC8 (char const*,char) ; 

__attribute__((used)) static void FUNC9(const char *name, const char *script_data, size_t script_size, DWORD expected_exit_code)
{
    char file_name[MAX_PATH];
    const char *ext;
    HANDLE file;
    DWORD size;
    BOOL res;

    ext = FUNC8(name, '.');
    FUNC5(ext != NULL, "no script extension\n");
    if(!ext)
      return;

    FUNC7(file_name, "test%s", ext);

    file = FUNC1(file_name, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS,
            FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC5(file != INVALID_HANDLE_VALUE, "CreateFile failed: %u\n", FUNC3());
    if(file == INVALID_HANDLE_VALUE)
        return;

    res = FUNC4(file, script_data, script_size, &size, NULL);
    FUNC0(file);
    FUNC5(res, "Could not write to file: %u\n", FUNC3());
    if(!res)
        return;

    FUNC6(file_name, expected_exit_code);

    FUNC2(file_name);
}