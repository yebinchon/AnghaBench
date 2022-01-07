
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int CAP_SYS_ADMIN ;
 int UID_INVALID ;
 int assert (int *) ;
 int detect_container () ;
 int return_test_polkit (int *,int ,char*,int *,int ,int *) ;
 int sd_bus_reply_method_return (int *,char*,char*) ;

__attribute__((used)) static int method_can_reboot_parameter(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Manager *m = userdata;
        int r;

        assert(message);
        assert(m);

        r = detect_container();
        if (r < 0)
                return r;
        if (r > 0)
                return sd_bus_reply_method_return(message, "s", "na");

        return return_test_polkit(
                        message,
                        CAP_SYS_ADMIN,
                        "org.freedesktop.login1.set-reboot-parameter",
                        ((void*)0),
                        UID_INVALID,
                        error);
}
