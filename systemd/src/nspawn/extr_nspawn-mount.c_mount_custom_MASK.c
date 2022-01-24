#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uid_t ;
struct TYPE_8__ {int in_userns; int type; } ;
typedef  TYPE_1__ CustomMount ;

/* Variables and functions */
#define  CUSTOM_MOUNT_ARBITRARY 132 
#define  CUSTOM_MOUNT_BIND 131 
#define  CUSTOM_MOUNT_INACCESSIBLE 130 
#define  CUSTOM_MOUNT_OVERLAY 129 
#define  CUSTOM_MOUNT_TMPFS 128 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char const*,TYPE_1__*) ; 
 int FUNC3 (char const*,TYPE_1__*) ; 
 int FUNC4 (char const*,TYPE_1__*) ; 
 int FUNC5 (char const*,TYPE_1__*) ; 
 int FUNC6 (char const*,TYPE_1__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 

int FUNC7(
                const char *dest,
                CustomMount *mounts, size_t n,
                bool userns, uid_t uid_shift, uid_t uid_range,
                const char *selinux_apifs_context,
                bool in_userns) {

        size_t i;
        int r;

        FUNC0(dest);

        for (i = 0; i < n; i++) {
                CustomMount *m = mounts + i;

                if (m->in_userns != in_userns)
                        continue;

                switch (m->type) {

                case CUSTOM_MOUNT_BIND:
                        r = FUNC3(dest, m);
                        break;

                case CUSTOM_MOUNT_TMPFS:
                        r = FUNC6(dest, m, userns, uid_shift, uid_range, selinux_apifs_context);
                        break;

                case CUSTOM_MOUNT_OVERLAY:
                        r = FUNC5(dest, m);
                        break;

                case CUSTOM_MOUNT_INACCESSIBLE:
                        r = FUNC4(dest, m);
                        break;

                case CUSTOM_MOUNT_ARBITRARY:
                        r = FUNC2(dest, m);
                        break;

                default:
                        FUNC1("Unknown custom mount type");
                }

                if (r < 0)
                        return r;
        }

        return 0;
}