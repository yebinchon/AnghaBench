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
typedef  int /*<<< orphan*/  target ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (char*,char*) ; 
 size_t FUNC2 (char**,int,char*,...) ; 

__attribute__((used)) static void FUNC3(void) {
        char target[25];
        char *s = target;
        size_t space_left;

        space_left = sizeof(target);
        space_left = FUNC2(&s, space_left, "space left: %zu. ", space_left);
        space_left = FUNC2(&s, space_left, "foo%s", "bar");

        FUNC0(FUNC1(target, "space left: 25. foobar"));
        FUNC0(space_left == 3);

        /* test overflow */
        s = target;
        space_left = FUNC2(&s, 12, "00 left: %i. ", 999);
        FUNC0(FUNC1(target, "00 left: 99"));
        FUNC0(space_left == 0);
        FUNC0(target[12] == '2');
}