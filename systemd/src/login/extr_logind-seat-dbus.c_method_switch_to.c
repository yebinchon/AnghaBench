
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Seat ;


 int EINVAL ;
 int assert (int *) ;
 int sd_bus_message_read (int *,char*,unsigned int*) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int seat_switch_to (int *,unsigned int) ;

__attribute__((used)) static int method_switch_to(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Seat *s = userdata;
        unsigned to;
        int r;

        assert(message);
        assert(s);

        r = sd_bus_message_read(message, "u", &to);
        if (r < 0)
                return r;

        if (to <= 0)
                return -EINVAL;

        r = seat_switch_to(s, to);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
