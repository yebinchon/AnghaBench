
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int log_error_errno (int,char*) ;
 int log_info (char*,int ) ;
 int sd_bus_message_get_path (int *) ;
 scalar_t__ sd_bus_message_is_method_call (int *,char*,char*) ;
 scalar_t__ sd_bus_message_is_method_error (int *,int *) ;
 int sd_bus_reply_method_return (int *,int *) ;

__attribute__((used)) static int object_callback(sd_bus_message *m, void *userdata, sd_bus_error *ret_error) {
        int r;

        if (sd_bus_message_is_method_error(m, ((void*)0)))
                return 0;

        if (sd_bus_message_is_method_call(m, "org.object.test", "Foobar")) {
                log_info("Invoked Foobar() on %s", sd_bus_message_get_path(m));

                r = sd_bus_reply_method_return(m, ((void*)0));
                if (r < 0)
                        return log_error_errno(r, "Failed to send reply: %m");

                return 1;
        }

        return 0;
}
