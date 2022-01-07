
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int assert (int *) ;
 int sd_bus_close (int ) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_event_exit (int *,int ) ;

__attribute__((used)) static int name_owner_change_callback(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        sd_event *e = userdata;

        assert(m);
        assert(e);

        sd_bus_close(sd_bus_message_get_bus(m));
        sd_event_exit(e, 0);

        return 1;
}
