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
 size_t FUNC2 (char**,size_t,char*,char*,...) ; 

__attribute__((used)) static void FUNC3(void) {
        char target[25];
        char *s = target;
        size_t space_left;

        space_left = sizeof(target);
        space_left = FUNC2(&s, space_left, "waldo", " test", " waldo. ", NULL);
        space_left = FUNC2(&s, space_left, "Banana", NULL);

        FUNC0(FUNC1(target, "waldo test waldo. Banana"));
        FUNC0(space_left == 1);
}