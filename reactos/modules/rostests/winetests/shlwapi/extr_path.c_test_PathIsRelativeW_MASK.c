#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  expect; int /*<<< orphan*/  path; } ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* test_path_is_relative ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL ret;
    int i, num;
    LPWSTR path;

    if (!&pPathIsRelativeW) {
        FUNC5("PathIsRelativeW not available\n");
        return;
    }

    num = FUNC0(test_path_is_relative);
    for (i = 0; i < num; i++) {
        path = FUNC2(test_path_is_relative[i].path);

        ret = FUNC4(path);
        FUNC3(ret == test_path_is_relative[i].expect,
          "PathIsRelativeW(\"%s\") expects %d, got %d.\n",
          test_path_is_relative[i].path, test_path_is_relative[i].expect, ret);

        FUNC1(path);
    }
}