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
struct TYPE_3__ {scalar_t__ expect; int /*<<< orphan*/  path; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* test_path_is_relative ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
    BOOL ret;
    int i, num;

    if (!&pPathIsRelativeA) {
        FUNC3("PathIsRelativeA not available\n");
        return;
    }

    num = FUNC0(test_path_is_relative);
    for (i = 0; i < num; i++) {
        ret = FUNC2(test_path_is_relative[i].path);
        FUNC1(ret == test_path_is_relative[i].expect,
          "PathIsRelativeA(\"%s\") expects %d, got %d.\n",
          test_path_is_relative[i].path, test_path_is_relative[i].expect, ret);
    }
}