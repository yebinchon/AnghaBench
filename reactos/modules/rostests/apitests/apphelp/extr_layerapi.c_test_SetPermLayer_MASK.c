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
typedef  int /*<<< orphan*/  file ;
typedef  scalar_t__ HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_ALWAYS ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FILE_ATTRIBUTE_NORMAL ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int,char*,...) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC11(void)
{
    char file[MAX_PATH + 20], tmp[MAX_PATH + 20];
    HANDLE hfile;

    FUNC4(MAX_PATH, tmp);
    FUNC3(tmp, file, sizeof(file));
    FUNC5(file, "test_file.exe");

    hfile = FUNC1(file, GENERIC_WRITE, 0, NULL, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, NULL);
    FUNC6(hfile != INVALID_HANDLE_VALUE, "CreateFile failed for '%s'\n", file);
    if (hfile == INVALID_HANDLE_VALUE)
    {
        FUNC8("Running these tests is useless without a file present\n");
        return;
    }
    FUNC0(hfile);

    if (FUNC7(FALSE, file, NULL))
    {
        FUNC9(FALSE, file);
        FUNC10(FALSE, file);
    }
    else
    {
        FUNC8("Skipping SetPermLayerStateLevel tests for User, because I cannot prepare the environment\n");
    }
    if (FUNC7(TRUE, file, NULL))
    {
        FUNC9(TRUE, file);
        FUNC10(TRUE, file);
    }
    else
    {
        FUNC8("Skipping SetPermLayerStateLevel tests for Machine (HKLM), because I cannot prepare the environment\n");
    }
    FUNC6(FUNC2(file), "DeleteFile failed....\n");
}