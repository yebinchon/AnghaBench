
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;
typedef int sd_bus ;


 int VIRTUALIZATION_NONE ;
 int assert (int *) ;
 int detect_virtualization () ;
 int sd_bus_message_append (int *,char*,int *) ;
 int * virtualization_to_string (int) ;

__attribute__((used)) static int property_get_virtualization(
                sd_bus *bus,
                const char *path,
                const char *interface,
                const char *property,
                sd_bus_message *reply,
                void *userdata,
                sd_bus_error *error) {

        int v;

        assert(bus);
        assert(reply);

        v = detect_virtualization();






        return sd_bus_message_append(
                        reply, "s",
                        v == VIRTUALIZATION_NONE ? ((void*)0) : virtualization_to_string(v));
}
