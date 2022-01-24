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
typedef  int /*<<< orphan*/  Condition ;

/* Variables and functions */
 int /*<<< orphan*/  CONDITION_DIRECTORY_NOT_EMPTY ; 
 int /*<<< orphan*/  CONDITION_FILE_IS_EXECUTABLE ; 
 int /*<<< orphan*/  CONDITION_FILE_NOT_EMPTY ; 
 int /*<<< orphan*/  CONDITION_PATH_EXISTS ; 
 int /*<<< orphan*/  CONDITION_PATH_EXISTS_GLOB ; 
 int /*<<< orphan*/  CONDITION_PATH_IS_DIRECTORY ; 
 int /*<<< orphan*/  CONDITION_PATH_IS_MOUNT_POINT ; 
 int /*<<< orphan*/  CONDITION_PATH_IS_READ_WRITE ; 
 int /*<<< orphan*/  CONDITION_PATH_IS_SYMBOLIC_LINK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void) {
        Condition *condition;

        condition = FUNC2(CONDITION_PATH_EXISTS, "/bin/sh", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition));
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_EXISTS, "/bin/s?", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_EXISTS_GLOB, "/bin/s?", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_EXISTS_GLOB, "/bin/s?", false, true);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_EXISTS, "/thiscertainlywontexist", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_EXISTS, "/thiscertainlywontexist", false, true);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_IS_DIRECTORY, "/bin", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_DIRECTORY_NOT_EMPTY, "/bin", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_FILE_NOT_EMPTY, "/bin/sh", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_FILE_IS_EXECUTABLE, "/bin/sh", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_FILE_IS_EXECUTABLE, "/etc/passwd", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_IS_MOUNT_POINT, "/proc", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_IS_MOUNT_POINT, "/", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_IS_MOUNT_POINT, "/bin", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) == 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_IS_READ_WRITE, "/tmp", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);

        condition = FUNC2(CONDITION_PATH_IS_SYMBOLIC_LINK, "/dev/stdout", false, false);
        FUNC0(*condition);
        FUNC0(FUNC3(condition) > 0);
        FUNC1(condition);
}