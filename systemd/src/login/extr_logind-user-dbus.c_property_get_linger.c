
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;
typedef int User ;


 int assert (int *) ;
 int sd_bus_message_append (int *,char*,int) ;
 int user_check_linger_file (int *) ;

__attribute__((used)) static int property_get_linger(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        User *u = userdata;
        int r;

        assert(bus);
        assert(reply);
        assert(u);

        r = user_check_linger_file(u);

        return sd_bus_message_append(reply, "b", r > 0);
}
