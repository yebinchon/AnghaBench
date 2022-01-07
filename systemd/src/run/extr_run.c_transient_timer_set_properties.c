
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;


 int UNIT_TIMER ;
 int arg_timer_property ;
 int assert (int *) ;
 int bus_log_create_error (int) ;
 int sd_bus_message_append (int *,char*,char*,char*,int) ;
 int transient_unit_set_properties (int *,int ,int ) ;

__attribute__((used)) static int transient_timer_set_properties(sd_bus_message *m) {
        int r;

        assert(m);

        r = transient_unit_set_properties(m, UNIT_TIMER, arg_timer_property);
        if (r < 0)
                return r;


        r = sd_bus_message_append(m, "(sv)", "RemainAfterElapse", "b", 0);
        if (r < 0)
                return bus_log_create_error(r);

        return 0;
}
