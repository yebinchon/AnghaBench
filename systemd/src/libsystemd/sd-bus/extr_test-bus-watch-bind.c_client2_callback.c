
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert_se (int) ;
 int sd_bus_get_event (int ) ;
 int sd_bus_message_get_bus (int *) ;
 scalar_t__ sd_bus_message_is_method_error (int *,int *) ;
 scalar_t__ sd_event_exit (int ,int ) ;

__attribute__((used)) static int client2_callback(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        assert_se(sd_bus_message_is_method_error(m, ((void*)0)) == 0);
        assert_se(sd_event_exit(sd_bus_get_event(sd_bus_message_get_bus(m)), 0) >= 0);
        return 0;
}
