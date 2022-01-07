
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int bus_image_common_get_metadata (int *,int *,int *,void*,int *) ;

__attribute__((used)) static int bus_image_method_get_metadata(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return bus_image_common_get_metadata(((void*)0), message, ((void*)0), userdata, error);
}
