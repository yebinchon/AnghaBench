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
typedef  int /*<<< orphan*/  uint8_t ;
struct bus_properties_map {int offset; int (* set ) (int /*<<< orphan*/ ,char const*,struct bus_properties_map const*,int /*<<< orphan*/ *,void*) ;scalar_t__ member; } ;
typedef  struct bus_properties_map const sd_bus_message ;
typedef  int /*<<< orphan*/  sd_bus_error ;

/* Variables and functions */
 int /*<<< orphan*/  SD_BUS_TYPE_ARRAY ; 
 int /*<<< orphan*/  SD_BUS_TYPE_DICT_ENTRY ; 
 int /*<<< orphan*/  SD_BUS_TYPE_STRING ; 
 int /*<<< orphan*/  SD_BUS_TYPE_VARIANT ; 
 int /*<<< orphan*/  FUNC0 (struct bus_properties_map const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,char const*,struct bus_properties_map const*,unsigned int,int /*<<< orphan*/ *,void*) ; 
 int FUNC2 (struct bus_properties_map const*,int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (struct bus_properties_map const*) ; 
 int /*<<< orphan*/  FUNC4 (struct bus_properties_map const*) ; 
 int FUNC5 (struct bus_properties_map const*,int /*<<< orphan*/ *,char const**) ; 
 int FUNC6 (struct bus_properties_map const*,int /*<<< orphan*/ ,char const**) ; 
 int FUNC7 (struct bus_properties_map const*,char*) ; 
 scalar_t__ FUNC8 (scalar_t__,char const*) ; 
 int FUNC9 (int /*<<< orphan*/ ,char const*,struct bus_properties_map const*,int /*<<< orphan*/ *,void*) ; 

int FUNC10(
                sd_bus_message *m,
                const struct bus_properties_map *map,
                unsigned flags,
                sd_bus_error *error,
                void *userdata) {

        int r;

        FUNC0(m);
        FUNC0(map);

        r = FUNC2(m, SD_BUS_TYPE_ARRAY, "{sv}");
        if (r < 0)
                return r;

        while ((r = FUNC2(m, SD_BUS_TYPE_DICT_ENTRY, "sv")) > 0) {
                const struct bus_properties_map *prop;
                const char *member;
                const char *contents;
                void *v;
                unsigned i;

                r = FUNC6(m, SD_BUS_TYPE_STRING, &member);
                if (r < 0)
                        return r;

                for (i = 0, prop = NULL; map[i].member; i++)
                        if (FUNC8(map[i].member, member)) {
                                prop = &map[i];
                                break;
                        }

                if (prop) {
                        r = FUNC5(m, NULL, &contents);
                        if (r < 0)
                                return r;

                        r = FUNC2(m, SD_BUS_TYPE_VARIANT, contents);
                        if (r < 0)
                                return r;

                        v = (uint8_t *)userdata + prop->offset;
                        if (map[i].set)
                                r = prop->set(FUNC4(m), member, m, error, v);
                        else
                                r = FUNC1(FUNC4(m), member, m, flags, error, v);
                        if (r < 0)
                                return r;

                        r = FUNC3(m);
                        if (r < 0)
                                return r;
                } else {
                        r = FUNC7(m, "v");
                        if (r < 0)
                                return r;
                }

                r = FUNC3(m);
                if (r < 0)
                        return r;
        }
        if (r < 0)
                return r;

        return FUNC3(m);
}