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
typedef  int /*<<< orphan*/  RECT ;
typedef  int BOOL ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
    RECT rect1, rect2;
    BOOL ret;

    FUNC1(&rect1, 0, 0, 0, 0);
    FUNC1(&rect2, 1, 1, 1, 1);

    ret = FUNC0(NULL, NULL);
    FUNC2(!ret, "got %d\n", ret);

    ret = FUNC0(&rect1, NULL);
    FUNC2(!ret, "got %d\n", ret);

    ret = FUNC0(NULL, &rect2);
    FUNC2(!ret, "got %d\n", ret);

    ret = FUNC0(&rect1, &rect2);
    FUNC2(!ret, "got %d\n", ret);

    FUNC1(&rect1, 0, 0, 10, 10);
    FUNC1(&rect2, 10, 10, 0, 0);

    ret = FUNC0(&rect1, &rect2);
    FUNC2(!ret, "got %d\n", ret);

    ret = FUNC0(&rect1, &rect1);
    FUNC2(ret, "got %d\n", ret);

    rect2 = rect1;
    ret = FUNC0(&rect1, &rect2);
    FUNC2(ret, "got %d\n", ret);
}