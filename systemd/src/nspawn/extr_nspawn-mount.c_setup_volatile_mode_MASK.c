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
typedef  int /*<<< orphan*/  uid_t ;
typedef  int VolatileMode ;

/* Variables and functions */
#define  VOLATILE_OVERLAY 130 
#define  VOLATILE_STATE 129 
#define  VOLATILE_YES 128 
 int FUNC0 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC1 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int FUNC2 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int FUNC3(
                const char *directory,
                VolatileMode mode,
                bool userns, uid_t uid_shift, uid_t uid_range,
                const char *selinux_apifs_context) {

        switch (mode) {

        case VOLATILE_YES:
                return FUNC2(directory, userns, uid_shift, uid_range, selinux_apifs_context);

        case VOLATILE_STATE:
                return FUNC1(directory, userns, uid_shift, uid_range, selinux_apifs_context);

        case VOLATILE_OVERLAY:
                return FUNC0(directory, userns, uid_shift, uid_range, selinux_apifs_context);

        default:
                return 0;
        }
}