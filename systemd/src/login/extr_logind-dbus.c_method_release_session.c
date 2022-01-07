
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int Session ;
typedef int Manager ;


 int assert (int *) ;
 int manager_get_session_from_creds (int *,int *,char const*,int *,int **) ;
 int sd_bus_message_read (int *,char*,char const**) ;
 int sd_bus_reply_method_return (int *,int *) ;
 int session_release (int *) ;

__attribute__((used)) static int method_release_session(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        Manager *m = userdata;
        Session *session;
        const char *name;
        int r;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "s", &name);
        if (r < 0)
                return r;

        r = manager_get_session_from_creds(m, message, name, error, &session);
        if (r < 0)
                return r;

        r = session_release(session);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, ((void*)0));
}
