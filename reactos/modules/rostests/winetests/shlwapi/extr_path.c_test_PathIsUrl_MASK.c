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
 size_t FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* TEST_PATH_IS_URL ; 
 int /*<<< orphan*/  FUNC2 (int,char*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(void)
{
    size_t i;
    BOOL ret;

    for (i = 0; i < FUNC0(TEST_PATH_IS_URL); i++) {
        ret = FUNC1(TEST_PATH_IS_URL[i].path);
        FUNC2(ret == TEST_PATH_IS_URL[i].expect,
           "returned %d from path %s, expected %d\n", ret, TEST_PATH_IS_URL[i].path,
           TEST_PATH_IS_URL[i].expect);
    }
}