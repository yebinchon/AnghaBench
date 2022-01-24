#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char const* machine; char const* id; } ;
typedef  TYPE_1__ UnitInfo ;

/* Variables and functions */
 int FUNC0 (char const*,char const*) ; 
 char* FUNC1 (char const*,char) ; 

__attribute__((used)) static int FUNC2(const UnitInfo *a, const UnitInfo *b) {
        const char *d1, *d2;
        int r;

        /* First, order by machine */
        if (!a->machine && b->machine)
                return -1;
        if (a->machine && !b->machine)
                return 1;
        if (a->machine && b->machine) {
                r = FUNC0(a->machine, b->machine);
                if (r != 0)
                        return r;
        }

        /* Second, order by unit type */
        d1 = FUNC1(a->id, '.');
        d2 = FUNC1(b->id, '.');
        if (d1 && d2) {
                r = FUNC0(d1, d2);
                if (r != 0)
                        return r;
        }

        /* Third, order by name */
        return FUNC0(a->id, b->id);
}