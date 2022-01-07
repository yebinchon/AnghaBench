
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int bus_machine_method_unregister ;
 int redirect_method_to_machine (int *,void*,int *,int ) ;

__attribute__((used)) static int method_unregister_machine(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return redirect_method_to_machine(message, userdata, error, bus_machine_method_unregister);
}
