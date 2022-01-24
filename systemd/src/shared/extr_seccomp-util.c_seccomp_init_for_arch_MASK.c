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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  scalar_t__ scmp_filter_ctx ;

/* Variables and functions */
 scalar_t__ EEXIST ; 
 int ENOMEM ; 
 int /*<<< orphan*/  SCMP_ACT_ALLOW ; 
 int /*<<< orphan*/  SCMP_ARCH_NATIVE ; 
 int /*<<< orphan*/  SCMP_FLTATR_ACT_BADARCH ; 
 int /*<<< orphan*/  SCMP_FLTATR_CTL_NNP ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 

int FUNC8(scmp_filter_ctx *ret, uint32_t arch, uint32_t default_action) {
        scmp_filter_ctx seccomp;
        int r;

        /* Much like seccomp_init(), but initializes the filter for one specific architecture only, without affecting
         * any others. Also, turns off the NNP fiddling. */

        seccomp = FUNC6(default_action);
        if (!seccomp)
                return -ENOMEM;

        if (arch != SCMP_ARCH_NATIVE &&
            arch != FUNC3()) {

                r = FUNC4(seccomp, FUNC3());
                if (r < 0)
                        goto finish;

                r = FUNC1(seccomp, arch);
                if (r < 0)
                        goto finish;

                FUNC0(FUNC2(seccomp, arch) >= 0);
                FUNC0(FUNC2(seccomp, SCMP_ARCH_NATIVE) == -EEXIST);
                FUNC0(FUNC2(seccomp, FUNC3()) == -EEXIST);
        } else {
                FUNC0(FUNC2(seccomp, SCMP_ARCH_NATIVE) >= 0);
                FUNC0(FUNC2(seccomp, FUNC3()) >= 0);
        }

        r = FUNC5(seccomp, SCMP_FLTATR_ACT_BADARCH, SCMP_ACT_ALLOW);
        if (r < 0)
                goto finish;

        r = FUNC5(seccomp, SCMP_FLTATR_CTL_NNP, 0);
        if (r < 0)
                goto finish;

        *ret = seccomp;
        return 0;

finish:
        FUNC7(seccomp);
        return r;
}