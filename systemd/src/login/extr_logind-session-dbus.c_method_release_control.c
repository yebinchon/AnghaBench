
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Session ;


 int BUS_ERROR_NOT_IN_CONTROL ;
 int assert (int *) ;
 int sd_bus_error_setf (int *,int ,char*) ;
 int sd_bus_message_get_sender (int *) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int session_drop_controller (int *) ;
 int session_is_controller (int *,int ) ;

__attribute__((used)) static int method_release_control(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Session *s = userdata;

        assert(message);
        assert(s);

        if (!session_is_controller(s, sd_bus_message_get_sender(message)))
                return sd_bus_error_setf(error, BUS_ERROR_NOT_IN_CONTROL, "You are not in control of this session");

        session_drop_controller(s);

        return sd_bus_reply_method_return(message, ((void*)0));
}
