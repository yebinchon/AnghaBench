#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ original_pid; } ;
typedef  TYPE_1__ sd_resolve ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 () ; 

__attribute__((used)) static bool FUNC2(sd_resolve *r) {
        FUNC0(r);

        /* We don't support people creating a resolver and keeping it
         * around after fork(). Let's complain. */

        return r->original_pid != FUNC1();
}