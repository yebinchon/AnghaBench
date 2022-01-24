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
struct TYPE_7__ {scalar_t__ code; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ sd_bus_error_map ;

/* Variables and functions */
 TYPE_1__* FUNC0 (TYPE_1__ const*,int) ; 
 scalar_t__ BUS_ERROR_MAP_END_MARKER ; 
 int EINVAL ; 
 int EIO ; 
 TYPE_1__ const* __start_SYSTEMD_BUS_ERROR_MAP ; 
 TYPE_1__ const* __stop_SYSTEMD_BUS_ERROR_MAP ; 
 TYPE_1__** additional_error_maps ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC4(const char *name) {
        const sd_bus_error_map **map, *m;
        const char *p;
        int r;

        if (!name)
                return EINVAL;

        p = FUNC2(name, "System.Error.");
        if (p) {
                r = FUNC1(p);
                if (r < 0)
                        return EIO;

                return r;
        }

        if (additional_error_maps)
                for (map = additional_error_maps; *map; map++)
                        for (m = *map;; m++) {
                                /* For additional error maps the end marker is actually the end marker */
                                if (m->code == BUS_ERROR_MAP_END_MARKER)
                                        break;

                                if (FUNC3(m->name, name))
                                        return m->code;
                        }

        m = FUNC0(__start_SYSTEMD_BUS_ERROR_MAP, sizeof(void*));
        while (m < __stop_SYSTEMD_BUS_ERROR_MAP) {
                /* For magic ELF error maps, the end marker might
                 * appear in the middle of things, since multiple maps
                 * might appear in the same section. Hence, let's skip
                 * over it, but realign the pointer to the next 8 byte
                 * boundary, which is the selected alignment for the
                 * arrays. */
                if (m->code == BUS_ERROR_MAP_END_MARKER) {
                        m = FUNC0(m + 1, sizeof(void*));
                        continue;
                }

                if (FUNC3(m->name, name))
                        return m->code;

                m++;
        }

        return EIO;
}