
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert_se (int) ;
 scalar_t__ sd_bus_emit_interfaces_removed (int ,char*,char*,int *) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;

__attribute__((used)) static int emit_interfaces_removed(sd_bus_message *m, void *userdata, sd_bus_error *error) {
        int r;

        assert_se(sd_bus_emit_interfaces_removed(sd_bus_message_get_bus(m), "/value/a/x", "org.freedesktop.systemd.ValueTest", ((void*)0)) >= 0);

        r = sd_bus_reply_method_return(m, ((void*)0));
        assert_se(r >= 0);

        return 1;
}
