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
struct TYPE_3__ {int left; int top; int right; int bottom; } ;
typedef  TYPE_1__ RECT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 

__attribute__((used)) static void FUNC2(void)
{
    RECT rect;
    BOOL ret;

    ret = FUNC0(NULL, 0, 0, 0, 0);
    FUNC1(!ret, "got %d\n", ret);

    ret = FUNC0(&rect, 1, 2, 3, 4);
    FUNC1(ret, "got %d\n", ret);
    FUNC1(rect.left == 1 && rect.top == 2 && rect.right == 3 && rect.bottom == 4,
        "got wrong rectangle\n");

    ret = FUNC0(&rect, 10, 10, 5, 5);
    FUNC1(ret, "got %d\n", ret);
    FUNC1(rect.left == 10 && rect.top == 10 && rect.right == 5 && rect.bottom == 5,
        "got wrong rectangle\n");
}