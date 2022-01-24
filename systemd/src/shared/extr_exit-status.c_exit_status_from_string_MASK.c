#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 size_t FUNC0 (TYPE_1__*) ; 
 TYPE_1__* exit_status_mappings ; 
 int FUNC1 (char const*,int*) ; 
 scalar_t__ FUNC2 (char const*,int /*<<< orphan*/ ) ; 

int FUNC3(const char *s) {
        uint8_t val;
        int r;

        for (size_t i = 0; i < FUNC0(exit_status_mappings); i++)
                if (FUNC2(s, exit_status_mappings[i].name))
                        return i;

        r = FUNC1(s, &val);
        if (r < 0)
                return r;

        return val;
}