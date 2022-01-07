
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int bus_image_method_get_os_release ;
 int redirect_method_to_image (int *,void*,int *,int ) ;

__attribute__((used)) static int method_get_image_os_release(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return redirect_method_to_image(message, userdata, error, bus_image_method_get_os_release);
}
