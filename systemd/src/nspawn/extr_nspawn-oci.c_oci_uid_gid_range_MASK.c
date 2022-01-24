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
typedef  scalar_t__ uintmax_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/  JsonVariant ;
typedef  int /*<<< orphan*/  JsonDispatchFlags ;

/* Variables and functions */
 int /*<<< orphan*/  ERANGE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(const char *name, JsonVariant *v, JsonDispatchFlags flags, void *userdata) {
        uid_t *uid = userdata, u;
        uintmax_t k;

        FUNC1(uid);
        FUNC2(sizeof(uid_t) == sizeof(gid_t));

        /* This is very much like oci_uid_gid(), except the checks are a bit different, as this is a UID range rather
         * than a specific UID, and hence (uid_t) -1 has no special significance. OTOH a range of zero makes no
         * sense. */

        k = FUNC4(v);
        u = (uid_t) k;
        if ((uintmax_t) u != k)
                return FUNC3(v, flags, FUNC0(ERANGE),
                                "UID/GID out of range: %ji", k);
        if (u == 0)
                return FUNC3(v, flags, FUNC0(ERANGE),
                                "UID/GID range can't be zero.");

        *uid = u;
        return 0;
}