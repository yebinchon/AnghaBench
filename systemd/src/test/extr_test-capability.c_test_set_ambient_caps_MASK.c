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
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  cap_t ;
typedef  scalar_t__ cap_flag_value_t ;

/* Variables and functions */
 int CAP_CHOWN ; 
 int /*<<< orphan*/  CAP_INHERITABLE ; 
 scalar_t__ CAP_SET ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT ; 
 int /*<<< orphan*/  PR_CAP_AMBIENT_IS_SET ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int,int) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(void) {
        cap_t caps;
        uint64_t set = 0;
        cap_flag_value_t fv;

        FUNC2(FUNC7(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_CHOWN, 0, 0) == 0);

        set = (FUNC0(1) << CAP_CHOWN);

        FUNC2(!FUNC6(set, true));

        caps = FUNC5();
        FUNC2(!FUNC4(caps, CAP_CHOWN, CAP_INHERITABLE, &fv));
        FUNC1(fv == CAP_SET);
        FUNC3(caps);

        FUNC2(FUNC7(PR_CAP_AMBIENT, PR_CAP_AMBIENT_IS_SET, CAP_CHOWN, 0, 0) == 1);
}