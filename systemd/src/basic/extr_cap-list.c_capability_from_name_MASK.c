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
struct capability_name {int id; } ;

/* Variables and functions */
 int EINVAL ; 
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  capability_names ; 
 struct capability_name* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC3 (char const*,int*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(const char *name) {
        const struct capability_name *sc;
        int r, i;

        FUNC1(name);

        /* Try to parse numeric capability */
        r = FUNC3(name, &i);
        if (r >= 0) {
                if (i >= 0 && (size_t) i < FUNC0(capability_names))
                        return i;
                else
                        return -EINVAL;
        }

        /* Try to parse string capability */
        sc = FUNC2(name, FUNC4(name));
        if (!sc)
                return -EINVAL;

        return sc->id;
}