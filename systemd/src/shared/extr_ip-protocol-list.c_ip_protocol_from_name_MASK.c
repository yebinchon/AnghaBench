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
struct ip_protocol_name {int id; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 struct ip_protocol_name* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 

int FUNC3(const char *name) {
        const struct ip_protocol_name *sc;

        FUNC0(name);

        sc = FUNC1(name, FUNC2(name));
        if (!sc)
                return -EINVAL;

        return sc->id;
}