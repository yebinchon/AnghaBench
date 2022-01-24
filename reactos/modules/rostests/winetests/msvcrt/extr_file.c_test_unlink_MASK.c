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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    FILE* file;
    FUNC4(FUNC3("test_unlink") == 0, "unable to create test dir\n");
    file = FUNC2("test_unlink\\empty", "w");
    FUNC4(file != NULL, "unable to create test file\n");
    if(file)
      FUNC1(file);
    FUNC4(FUNC0("test_unlink") != 0, "unlinking a non-empty directory must fail\n");
    FUNC6("test_unlink\\empty");
    FUNC5("test_unlink");
}