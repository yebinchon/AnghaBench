
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Session ;
typedef int Manager ;


 int assert (int *) ;
 int bus_session_method_kill (int *,int *,int *) ;
 int manager_get_session_from_creds (int *,int *,char const*,int *,int **) ;
 int sd_bus_message_read (int *,char*,char const**) ;

__attribute__((used)) static int method_kill_session(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *name;
        Manager *m = userdata;
        Session *session;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "s", &name);
        if (r < 0)
                return r;

        r = manager_get_session_from_creds(m, message, name, error, &session);
        if (r < 0)
                return r;

        return bus_session_method_kill(message, session, error);
}
