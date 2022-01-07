
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus_error ;


 int SD_BUS_ERROR_NOT_SUPPORTED ;
 int sd_bus_error_setf (int *,int ,char*) ;

__attribute__((used)) static int method_refuse_snapshot(sd_bus_message *message, void *userdata, sd_bus_error *error) {
        return sd_bus_error_setf(error, SD_BUS_ERROR_NOT_SUPPORTED, "Support for snapshots has been removed.");
}
