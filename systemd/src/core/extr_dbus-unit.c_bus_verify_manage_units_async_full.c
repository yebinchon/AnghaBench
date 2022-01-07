
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sd_bus_message ;
typedef int sd_bus_error ;
struct TYPE_5__ {char* id; TYPE_1__* manager; } ;
typedef TYPE_2__ Unit ;
struct TYPE_4__ {int polkit_registry; } ;


 char* GETTEXT_PACKAGE ;
 int UID_INVALID ;
 int bus_verify_polkit_async (int *,int,char*,char const**,int,int ,int *,int *) ;

__attribute__((used)) static int bus_verify_manage_units_async_full(
                Unit *u,
                const char *verb,
                int capability,
                const char *polkit_message,
                bool interactive,
                sd_bus_message *call,
                sd_bus_error *error) {

        const char *details[9] = {
                "unit", u->id,
                "verb", verb,
        };

        if (polkit_message) {
                details[4] = "polkit.message";
                details[5] = polkit_message;
                details[6] = "polkit.gettext_domain";
                details[7] = GETTEXT_PACKAGE;
        }

        return bus_verify_polkit_async(
                        call,
                        capability,
                        "org.freedesktop.systemd1.manage-units",
                        details,
                        interactive,
                        UID_INVALID,
                        &u->manager->polkit_registry,
                        error);
}
