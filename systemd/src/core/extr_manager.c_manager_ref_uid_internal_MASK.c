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
typedef  int uint32_t ;
typedef  scalar_t__ uid_t ;
typedef  int /*<<< orphan*/  gid_t ;
typedef  int /*<<< orphan*/ * Manager ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int DESTROY_IPC_FLAG ; 
 int EOVERFLOW ; 
 scalar_t__ GID_INVALID ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UID_INVALID ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  trivial_hash_ops ; 
 int /*<<< orphan*/ ** FUNC8 (scalar_t__) ; 

__attribute__((used)) static int FUNC9(
                Manager *m,
                Hashmap **uid_refs,
                uid_t uid,
                bool clean_ipc) {

        uint32_t c, n;
        int r;

        FUNC3(m);
        FUNC3(uid_refs);
        FUNC3(FUNC8(uid));

        /* A generic implementation, covering both manager_ref_uid() and manager_ref_gid(), under the assumption
         * that uid_t and gid_t are actually defined the same way, with the same validity rules. */

        FUNC4(sizeof(uid_t) == sizeof(gid_t));
        FUNC4(UID_INVALID == (uid_t) GID_INVALID);

        if (uid == 0) /* We don't keep track of root, and will never destroy it */
                return 0;

        r = FUNC5(uid_refs, &trivial_hash_ops);
        if (r < 0)
                return r;

        c = FUNC0(FUNC6(*uid_refs, FUNC1(uid)));

        n = c & ~DESTROY_IPC_FLAG;
        n++;

        if (n & DESTROY_IPC_FLAG) /* check for overflow */
                return -EOVERFLOW;

        c = n | (c & DESTROY_IPC_FLAG) | (clean_ipc ? DESTROY_IPC_FLAG : 0);

        return FUNC7(*uid_refs, FUNC1(uid), FUNC2(c));
}