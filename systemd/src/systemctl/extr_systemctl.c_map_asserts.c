
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef scalar_t__ int32_t ;
struct TYPE_2__ {char const* failed_assert; int failed_assert_trigger; int failed_assert_negate; char const* failed_assert_parameter; } ;
typedef TYPE_1__ UnitStatusInfo ;


 int SD_BUS_TYPE_ARRAY ;
 int sd_bus_message_enter_container (int *,int ,char*) ;
 int sd_bus_message_exit_container (int *) ;
 int sd_bus_message_read (int *,char*,char const**,int*,int*,char const**,scalar_t__*) ;

__attribute__((used)) static int map_asserts(sd_bus *bus, const char *member, sd_bus_message *m, sd_bus_error *error, void *userdata) {
        UnitStatusInfo *i = userdata;
        const char *cond, *param;
        int trigger, negate;
        int32_t state;
        int r;

        r = sd_bus_message_enter_container(m, SD_BUS_TYPE_ARRAY, "(sbbsi)");
        if (r < 0)
                return r;

        while ((r = sd_bus_message_read(m, "(sbbsi)", &cond, &trigger, &negate, &param, &state)) > 0) {
                if (state < 0 && (!trigger || !i->failed_assert)) {
                        i->failed_assert = cond;
                        i->failed_assert_trigger = trigger;
                        i->failed_assert_negate = negate;
                        i->failed_assert_parameter = param;
                }
        }
        if (r < 0)
                return r;

        r = sd_bus_message_exit_container(m);
        if (r < 0)
                return r;

        return 0;
}
