#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int use_br_vlan; int /*<<< orphan*/  pvid; } ;
typedef  TYPE_1__ Network ;

/* Variables and functions */
 int FUNC0 (char const*,int /*<<< orphan*/ *) ; 

int FUNC1(const char *unit, const char *filename,
                             unsigned line, const char *section,
                             unsigned section_line, const char *lvalue,
                             int ltype, const char *rvalue, void *data,
                             void *userdata) {
        Network *network = userdata;
        uint16_t pvid;
        int r;

        r = FUNC0(rvalue, &pvid);
        if (r < 0)
                return r;

        network->pvid = pvid;
        network->use_br_vlan = true;

        return 0;
}