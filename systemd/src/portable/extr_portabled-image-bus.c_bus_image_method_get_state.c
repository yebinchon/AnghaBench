
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int path; } ;
typedef TYPE_1__ sd_bus_message ;
typedef int sd_bus_error ;
typedef int PortableState ;
typedef TYPE_1__ Image ;


 int assert (TYPE_1__*) ;
 int portable_get_state (int ,int ,int ,int *,int *) ;
 int portable_state_to_string (int ) ;
 int sd_bus_message_get_bus (TYPE_1__*) ;
 int sd_bus_reply_method_return (TYPE_1__*,char*,int ) ;

__attribute__((used)) static int bus_image_method_get_state(
                sd_bus_message *message,
                void *userdata,
                sd_bus_error *error) {

        Image *image = userdata;
        PortableState state;
        int r;

        assert(message);
        assert(image);

        r = portable_get_state(
                        sd_bus_message_get_bus(message),
                        image->path,
                        0,
                        &state,
                        error);
        if (r < 0)
                return r;

        return sd_bus_reply_method_return(message, "s", portable_state_to_string(state));
}
