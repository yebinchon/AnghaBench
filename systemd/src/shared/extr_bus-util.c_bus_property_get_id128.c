
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes; } ;
typedef TYPE_1__ sd_id128_t ;
typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int sd_bus_message_append (int *,char*,int ) ;
 int sd_bus_message_append_array (int *,char,int ,int) ;
 scalar_t__ sd_id128_is_null (TYPE_1__) ;

int bus_property_get_id128(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        sd_id128_t *id = userdata;

        if (sd_id128_is_null(*id))
                return sd_bus_message_append(reply, "ay", 0);
        else
                return sd_bus_message_append_array(reply, 'y', id->bytes, 16);
}
