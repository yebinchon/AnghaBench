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
struct TYPE_3__ {int member_writable; scalar_t__ member_flags; int /*<<< orphan*/ * member_result; int /*<<< orphan*/ * member_signature; int /*<<< orphan*/ * member_name; } ;
typedef  TYPE_1__ Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(Context *c) {
        FUNC0(c->member_name);
        FUNC0(c->member_signature);
        FUNC0(c->member_result);

        c->member_name = c->member_signature = c->member_result = NULL;
        c->member_flags = 0;
        c->member_writable = false;
}