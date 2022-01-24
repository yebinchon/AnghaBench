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
typedef  char const Manager ;
typedef  int /*<<< orphan*/  Hashmap ;

/* Variables and functions */
 int DESTROY_IPC_FLAG ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 int FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int,char*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int FUNC10 (char const*,scalar_t__*) ; 
 int /*<<< orphan*/  trivial_hash_ops ; 

__attribute__((used)) static void FUNC11(
                Manager *m,
                Hashmap** uid_refs,
                const char *value) {

        uid_t uid;
        uint32_t c;
        int r;

        FUNC3(m);
        FUNC3(uid_refs);
        FUNC3(value);

        r = FUNC10(value, &uid);
        if (r < 0 || uid == 0) {
                FUNC7("Unable to parse UID reference serialization");
                return;
        }

        r = FUNC4(uid_refs, &trivial_hash_ops);
        if (r < 0) {
                FUNC9();
                return;
        }

        c = FUNC0(FUNC5(*uid_refs, FUNC1(uid)));
        if (c & DESTROY_IPC_FLAG)
                return;

        c |= DESTROY_IPC_FLAG;

        r = FUNC6(*uid_refs, FUNC1(uid), FUNC2(c));
        if (r < 0) {
                FUNC8(r, "Failed to add UID reference entry: %m");
                return;
        }
}