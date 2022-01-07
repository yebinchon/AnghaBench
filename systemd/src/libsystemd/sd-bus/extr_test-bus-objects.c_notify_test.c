
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int path; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;


 int assert_se (int) ;
 scalar_t__ sd_bus_emit_properties_changed (int ,int ,char*,char*,int *) ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;

__attribute__((used)) static int notify_test(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        int r;

        assert_se(sd_bus_emit_properties_changed(sd_bus_message_get_bus(m), m->path, "org.freedesktop.systemd.ValueTest", "Value", ((void*)0)) >= 0);

        r = sd_bus_reply_method_return(m, ((void*)0));
        assert_se(r >= 0);

        return 1;
}
