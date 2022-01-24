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
typedef  int /*<<< orphan*/  Context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC4 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC5 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 
 int FUNC8 (int /*<<< orphan*/ *,char const*,char const*) ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

int FUNC10(const char *key, const char *value, void *data) {
        Context *context = data;

        FUNC0(key);
        FUNC0(data);

        if (FUNC9(key, "ip"))
                return FUNC4(context, key, value);
        if (FUNC9(key, "rd.route"))
                return FUNC7(context, key, value);
        if (FUNC9(key, "nameserver"))
                return FUNC5(context, key, value);
        if (FUNC9(key, "rd.peerdns"))
                return FUNC6(context, key, value);
        if (FUNC9(key, "vlan"))
                return FUNC8(context, key, value);
        if (FUNC9(key, "bridge"))
                return FUNC2(context, key, value);
        if (FUNC9(key, "bond"))
                return FUNC1(context, key, value);
        if (FUNC9(key, "ifname"))
                return FUNC3(context, key, value);

        return 0;
}