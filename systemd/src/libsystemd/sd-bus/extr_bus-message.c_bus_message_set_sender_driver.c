
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* unique_name; int well_known_names_driver; int mask; } ;
struct TYPE_8__ {char* sender; int creds_mask; TYPE_1__ creds; } ;
typedef TYPE_2__ sd_bus_message ;
typedef TYPE_2__ sd_bus ;


 int SD_BUS_CREDS_UNIQUE_NAME ;
 int SD_BUS_CREDS_WELL_KNOWN_NAMES ;
 int assert (TYPE_2__*) ;

void bus_message_set_sender_driver(sd_bus *bus, sd_bus_message *m) {
        assert(bus);
        assert(m);

        m->sender = m->creds.unique_name = (char*) "org.freedesktop.DBus";
        m->creds.well_known_names_driver = 1;
        m->creds.mask |= (SD_BUS_CREDS_UNIQUE_NAME|SD_BUS_CREDS_WELL_KNOWN_NAMES) & bus->creds_mask;
}
