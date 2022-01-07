
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int User ;
typedef int Manager ;


 int assert (int *) ;
 int bus_user_method_kill (int *,int *,int *) ;
 int manager_get_user_from_creds (int *,int *,int ,int *,int **) ;
 int sd_bus_message_read (int *,char*,int *) ;

__attribute__((used)) static int method_kill_user(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        uint32_t uid;
        User *user;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "u", &uid);
        if (r < 0)
                return r;

        r = manager_get_user_from_creds(m, message, uid, error, &user);
        if (r < 0)
                return r;

        return bus_user_method_kill(message, user, error);
}
