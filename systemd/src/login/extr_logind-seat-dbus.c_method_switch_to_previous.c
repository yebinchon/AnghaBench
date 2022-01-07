
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Seat ;


 int assert (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int seat_switch_to_previous (int *) ;

__attribute__((used)) static int method_switch_to_previous(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Seat *s = userdata;
        int r;

        assert(message);
        assert(s);

        r = seat_switch_to_previous(s);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
