#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ code; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ sd_bus_error_map ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*,int) ; 
 scalar_t__ BUS_ERROR_MAP_END_MARKER ; 
 TYPE_1__ const* __start_SYSTEMD_BUS_ERROR_MAP ; 
 TYPE_1__ const* __stop_SYSTEMD_BUS_ERROR_MAP ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void) {
        const sd_bus_error_map *m;

        FUNC2("----- errno mappings ------\n");
        m = FUNC0(__start_SYSTEMD_BUS_ERROR_MAP, sizeof(void*));
        while (m < __stop_SYSTEMD_BUS_ERROR_MAP) {

                if (m->code == BUS_ERROR_MAP_END_MARKER) {
                        m = FUNC0(m + 1, sizeof(void*));
                        continue;
                }

                FUNC2("%s -> %i/%s\n", FUNC3(m->name), m->code, FUNC3(FUNC1(m->code)));
                m++;
        }
        FUNC2("---------------------------\n");
}