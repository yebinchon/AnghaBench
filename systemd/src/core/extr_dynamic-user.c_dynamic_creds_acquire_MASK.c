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
struct TYPE_7__ {scalar_t__ user; scalar_t__ group; } ;
typedef  TYPE_1__ Manager ;
typedef  TYPE_1__ DynamicCreds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int FUNC1 (TYPE_1__*,char const*,scalar_t__*) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 

int FUNC5(DynamicCreds *creds, Manager *m, const char *user, const char *group) {
        bool acquired = false;
        int r;

        FUNC0(creds);
        FUNC0(m);

        /* A DynamicUser object encapsulates an allocation of both a UID and a GID for a specific name. However, some
         * services use different user and groups. For cases like that there's DynamicCreds containing a pair of user
         * and group. This call allocates a pair. */

        if (!creds->user && user) {
                r = FUNC1(m, user, &creds->user);
                if (r < 0)
                        return r;

                acquired = true;
        }

        if (!creds->group) {

                if (creds->user && (!group || FUNC4(user, group)))
                        creds->group = FUNC2(creds->user);
                else {
                        r = FUNC1(m, group, &creds->group);
                        if (r < 0) {
                                if (acquired)
                                        creds->user = FUNC3(creds->user);
                                return r;
                        }
                }
        }

        return 0;
}