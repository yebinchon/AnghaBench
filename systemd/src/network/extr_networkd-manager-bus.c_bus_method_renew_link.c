
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int bus_link_method_renew ;
 int call_link_method (void*,int *,int ,int *) ;

__attribute__((used)) static int bus_method_renew_link(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return call_link_method(userdata, message, bus_link_method_renew, error);
}
