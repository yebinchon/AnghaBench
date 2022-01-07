
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef scalar_t__ uid_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Manager ;


 int BUS_ERROR_NO_SUCH_DYNAMIC_USER ;
 int ESRCH ;
 int MANAGER_IS_SYSTEM (int *) ;
 int SD_BUS_ERROR_INVALID_ARGS ;
 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int assert (int *) ;
 int dynamic_user_lookup_name (int *,char const*,scalar_t__*) ;
 int sd_bus_error_setf (int *,int ,char*,...) ;
 int sd_bus_message_read_basic (int *,char,char const**) ;
 int sd_bus_reply_method_return (int *,char*,int ) ;
 int valid_user_group_name (char const*) ;

__attribute__((used)) static int method_lookup_dynamic_user_by_name(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        const char *name;
        uid_t uid;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read_basic(message, 's', &name);
        if (r < 0)
                return r;

        if (!MANAGER_IS_SYSTEM(m))
                return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Dynamic users are only supported in the system instance.");
        if (!valid_user_group_name(name))
                return sd_bus_error_setf(error, SD_BUS_ERROR_INVALID_ARGS, "User name invalid: %s", name);

        r = dynamic_user_lookup_name(m, name, &uid);
        if (r == -ESRCH)
                return sd_bus_error_setf(error, BUS_ERROR_NO_SUCH_DYNAMIC_USER, "Dynamic user %s does not exist.", name);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, "u", (uint32_t) uid);
}
