
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {unsigned int enable_wall_messages; int wall_message; int polkit_registry; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef TYPE_1__ Manager ;


 int CAP_SYS_ADMIN ;
 int UID_INVALID ;
 int assert (TYPE_1__*) ;
 int bus_verify_polkit_async (TYPE_1__*,int ,char*,int *,int,int ,int *,int *) ;
 int empty_to_null (char*) ;
 int free_and_strdup (int *,int ) ;
 int log_oom () ;
 int sd_bus_message_read (TYPE_1__*,char*,char**,unsigned int*) ;
 int sd_bus_reply_method_return (TYPE_1__*,int *) ;

__attribute__((used)) static int method_set_wall_message(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        int r;
        Manager *m = userdata;
        char *wall_message;
        unsigned enable_wall_messages;

        assert(message);
        assert(m);

        r = sd_bus_message_read(message, "sb", &wall_message, &enable_wall_messages);
        if (r < 0)
                return r;

        r = bus_verify_polkit_async(message,
                                    CAP_SYS_ADMIN,
                                    "org.freedesktop.login1.set-wall-message",
                                    ((void*)0),
                                    0,
                                    UID_INVALID,
                                    &m->polkit_registry,
                                    error);
        if (r < 0)
                return r;
        if (r == 0)
                return 1;

        r = free_and_strdup(&m->wall_message, empty_to_null(wall_message));
        if (r < 0)
                return log_oom();

        m->enable_wall_messages = enable_wall_messages;

        return sd_bus_reply_method_return(message, ((void*)0));
}
