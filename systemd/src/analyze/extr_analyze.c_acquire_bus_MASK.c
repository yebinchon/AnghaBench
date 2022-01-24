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
typedef  int /*<<< orphan*/  sd_bus ;

/* Variables and functions */
 int /*<<< orphan*/  EHOSTDOWN ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ UNIT_FILE_SYSTEM ; 
 int /*<<< orphan*/  arg_host ; 
 scalar_t__ arg_scope ; 
 int /*<<< orphan*/  arg_transport ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ **) ; 

__attribute__((used)) static int FUNC3(sd_bus **bus, bool *use_full_bus) {
        bool user = arg_scope != UNIT_FILE_SYSTEM;
        int r;

        if (use_full_bus && *use_full_bus) {
                r = FUNC1(arg_transport, arg_host, user, bus);
                if (FUNC0(r, 0, -EHOSTDOWN))
                        return r;

                *use_full_bus = false;
        }

        return FUNC2(arg_transport, arg_host, user, bus);
}