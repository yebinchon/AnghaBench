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
typedef  char CHAR ;

/* Variables and functions */
 int ERROR_ALREADY_EXISTS ; 
 int ERROR_SUCCESS ; 
 int MAX_PATH ; 
 int FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    CHAR path[MAX_PATH];
    int ret;

    FUNC3(path, "testdir2\\test4.txt\0");
    ret = FUNC0(NULL, path, NULL);
    FUNC2(ERROR_SUCCESS == ret, "SHCreateDirectoryEx failed to create directory recursively, ret = %d\n", ret);
    FUNC2(FUNC1("testdir2"), "The first directory is not created\n");
    FUNC2(FUNC1("testdir2\\test4.txt"), "The second directory is not created\n");

    ret = FUNC0(NULL, path, NULL);
    FUNC2(ERROR_ALREADY_EXISTS == ret, "SHCreateDirectoryEx should fail to create existing directory, ret = %d\n", ret);

    ret = FUNC0(NULL, "c:\\testdir3", NULL);
    FUNC2(ERROR_SUCCESS == ret, "SHCreateDirectoryEx failed to create directory, ret = %d\n", ret);
    FUNC2(FUNC1("c:\\testdir3"), "The directory is not created\n");
}