
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int JOB_STOP ;
 int method_start_unit_generic (int *,void*,int ,int,int *) ;

__attribute__((used)) static int method_stop_unit(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return method_start_unit_generic(message, userdata, JOB_STOP, 0, error);
}
