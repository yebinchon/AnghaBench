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
typedef  int /*<<< orphan*/  JournalFile ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 

__attribute__((used)) static void FUNC3(void) {
        JournalFile *one, *two;
        one = FUNC2("one.journal");
        two = FUNC2("two.journal");
        FUNC0(one, 1, NULL);
        FUNC0(two, 2, NULL);
        FUNC0(one, 3, NULL);
        FUNC0(two, 4, NULL);
        FUNC1(one);
        FUNC1(two);
}