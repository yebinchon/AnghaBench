
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int bus_test_polkit (int *,int,char const*,char const**,int ,int*,int *) ;
 int sd_bus_reply_method_return (int *,char*,char const*) ;

__attribute__((used)) static int return_test_polkit(
                sd_bus_message *message,
                int capability,
                const char *action,
                const char **details,
                uid_t good_user,
                sd_bus_error *e) {

        const char *result;
        bool challenge;
        int r;

        r = bus_test_polkit(message, capability, action, details, good_user, &challenge, e);
        if (r < 0)
                return r;

        if (r > 0)
                result = "yes";
        else if (challenge)
                result = "challenge";
        else
                result = "no";

        return sd_bus_reply_method_return(message, "s", result);
}
