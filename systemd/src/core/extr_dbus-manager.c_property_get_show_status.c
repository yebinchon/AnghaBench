
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int show_status; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ sd_bus ;
typedef TYPE_1__ Manager ;


 int IN_SET (int ,int ,int ) ;
 int SHOW_STATUS_TEMPORARY ;
 int SHOW_STATUS_YES ;
 int assert (TYPE_1__*) ;
 int sd_bus_message_append_basic (TYPE_1__*,char,int*) ;

__attribute__((used)) static int property_get_show_status(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int b;

        assert(bus);
        assert(reply);
        assert(m);

        b = IN_SET(m->show_status, SHOW_STATUS_TEMPORARY, SHOW_STATUS_YES);
        return sd_bus_message_append_basic(reply, 'b', &b);
}
