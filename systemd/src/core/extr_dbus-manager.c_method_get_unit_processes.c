
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int bus_unit_method_get_processes ;
 int method_generic_unit_operation (int *,void*,int *,int ,int ) ;

__attribute__((used)) static int method_get_unit_processes(sd_bus_message *message, void *userdata, sd_bus_error *error) {


        return method_generic_unit_operation(message, userdata, error, bus_unit_method_get_processes, 0);
}
