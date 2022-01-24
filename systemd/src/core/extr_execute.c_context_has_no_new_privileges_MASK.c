#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ protect_hostname; scalar_t__ lock_personality; int /*<<< orphan*/  syscall_archs; scalar_t__ private_devices; scalar_t__ protect_kernel_logs; scalar_t__ protect_kernel_modules; scalar_t__ protect_kernel_tunables; scalar_t__ restrict_suid_sgid; scalar_t__ restrict_realtime; scalar_t__ memory_deny_write_execute; scalar_t__ no_new_privileges; } ;
typedef  TYPE_1__ ExecContext ;

/* Variables and functions */
 int /*<<< orphan*/  CAP_SYS_ADMIN ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 scalar_t__ FUNC1 (TYPE_1__ const*) ; 
 scalar_t__ FUNC2 (TYPE_1__ const*) ; 
 scalar_t__ FUNC3 (TYPE_1__ const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(const ExecContext *c) {
        FUNC0(c);

        if (c->no_new_privileges)
                return true;

        if (FUNC4(CAP_SYS_ADMIN)) /* if we are privileged, we don't need NNP */
                return false;

        /* We need NNP if we have any form of seccomp and are unprivileged */
        return FUNC1(c) ||
                c->memory_deny_write_execute ||
                c->restrict_realtime ||
                c->restrict_suid_sgid ||
                FUNC3(c) ||
                c->protect_kernel_tunables ||
                c->protect_kernel_modules ||
                c->protect_kernel_logs ||
                c->private_devices ||
                FUNC2(c) ||
                !FUNC5(c->syscall_archs) ||
                c->lock_personality ||
                c->protect_hostname;
}