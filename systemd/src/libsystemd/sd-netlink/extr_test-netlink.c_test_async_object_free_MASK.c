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
struct test_async_object {int /*<<< orphan*/  ifname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct test_async_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct test_async_object* FUNC2 (struct test_async_object*) ; 

__attribute__((used)) static struct test_async_object *FUNC3(struct test_async_object *t) {
        FUNC0(t);

        FUNC1(t->ifname);
        return FUNC2(t);
}