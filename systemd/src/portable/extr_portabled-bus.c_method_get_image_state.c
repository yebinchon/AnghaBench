
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int PortableState ;


 int assert (int *) ;
 int portable_get_state (int ,char const*,int ,int *,int *) ;
 int portable_state_to_string (int ) ;
 int sd_bus_message_get_bus (int *) ;
 int sd_bus_message_read (int *,char*,char const**) ;
 int sd_bus_reply_method_return (int *,char*,int ) ;

__attribute__((used)) static int method_get_image_state(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        const char *name_or_path;
        PortableState state;
        int r;

        assert(message);

        r = sd_bus_message_read(message, "s", &name_or_path);
        if (r < 0)
                return r;

        r = portable_get_state(
                        sd_bus_message_get_bus(message),
                        name_or_path,
                        0,
                        &state,
                        error);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, "s", portable_state_to_string(state));
}
