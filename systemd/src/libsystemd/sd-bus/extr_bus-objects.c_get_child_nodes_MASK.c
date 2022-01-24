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
typedef  int /*<<< orphan*/ * node ;
typedef  int /*<<< orphan*/  sd_bus_error ;
typedef  int /*<<< orphan*/ * sd_bus ;
typedef  int /*<<< orphan*/  Set ;

/* Variables and functions */
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ **,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  string_hash_ops ; 

__attribute__((used)) static int FUNC4(
                sd_bus *bus,
                const char *prefix,
                struct node *n,
                unsigned flags,
                Set **_s,
                sd_bus_error *error) {

        Set *s = NULL;
        int r;

        FUNC1(bus);
        FUNC1(prefix);
        FUNC1(n);
        FUNC1(_s);

        s = FUNC3(&string_hash_ops);
        if (!s)
                return -ENOMEM;

        r = FUNC0(bus, prefix, n, flags, s, error);
        if (r < 0) {
                FUNC2(s);
                return r;
        }

        *_s = s;
        return 0;
}