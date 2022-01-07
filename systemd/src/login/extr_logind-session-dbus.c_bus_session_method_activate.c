
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Session ;


 int assert (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int session_activate (int *) ;

int bus_session_method_activate(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;
        int r;

        assert(message);
        assert(s);

        r = session_activate(s);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
