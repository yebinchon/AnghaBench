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

/* Variables and functions */
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    int len;

    FUNC1(MAX_PATH, CURR_DIR);
    len = FUNC3(CURR_DIR);

    if(len && (CURR_DIR[len-1] == '\\'))
        CURR_DIR[len-1] = 0;

    FUNC2("test1.txt");
    FUNC2("test2.txt");
    FUNC2("test3.txt");
    FUNC2("test_5.txt");
    FUNC0("test4.txt", NULL);
    FUNC0("testdir2", NULL);
    FUNC0("testdir2\\nested", NULL);
    FUNC2("testdir2\\one.txt");
    FUNC2("testdir2\\nested\\two.txt");
}