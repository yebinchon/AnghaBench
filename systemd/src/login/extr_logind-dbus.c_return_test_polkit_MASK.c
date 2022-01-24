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
typedef  int /*<<< orphan*/  sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int,char const*,char const**,int /*<<< orphan*/ ,int*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,char*,char const*) ; 

__attribute__((used)) static int FUNC2(
                sd_bus_message *message,
                int capability,
                const char *action,
                const char **details,
                uid_t good_user,
                sd_bus_error *e) {

        const char *result;
        bool challenge;
        int r;

        r = FUNC0(message, capability, action, details, good_user, &challenge, e);
        if (r < 0)
                return r;

        if (r > 0)
                result = "yes";
        else if (challenge)
                result = "challenge";
        else
                result = "no";

        return FUNC1(message, "s", result);
}