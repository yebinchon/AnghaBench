
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int method_create_machine_internal (int *,int,void*,int *) ;

__attribute__((used)) static int method_create_machine(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return method_create_machine_internal(message, 0, userdata, error);
}
