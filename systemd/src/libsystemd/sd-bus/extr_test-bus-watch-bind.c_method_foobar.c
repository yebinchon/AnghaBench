
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert_se (int) ;
 int log_info (char*) ;
 int sd_bus_get_event (int ) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;
 scalar_t__ sd_event_exit (int ,int ) ;

__attribute__((used)) static int method_foobar(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        log_info("Got Foobar() call.");

        assert_se(sd_event_exit(sd_bus_get_event(sd_bus_message_get_bus(m)), 0) >= 0);
        return sd_bus_reply_method_return(m, ((void*)0));
}
