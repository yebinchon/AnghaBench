
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int KillContext ;


 int assert (int *) ;
 int restart_kill_signal (int *) ;
 int sd_bus_message_append_basic (int *,char,int*) ;

__attribute__((used)) static int property_get_restart_kill_signal(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {
        KillContext *c = userdata;
        int s;

        assert(c);

        s = restart_kill_signal(c);
        return sd_bus_message_append_basic(reply, 'i', &s);
}
