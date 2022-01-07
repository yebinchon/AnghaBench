
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_error ;


 int SD_BUS_ERROR_ACCESS_DENIED ;
 int SD_BUS_ERROR_DISCONNECTED ;
 int SD_BUS_ERROR_NAME_HAS_NO_OWNER ;
 int SD_BUS_ERROR_NO_REPLY ;
 int SD_BUS_ERROR_SERVICE_UNKNOWN ;
 int SD_BUS_ERROR_TIMEOUT ;
 scalar_t__ sd_bus_error_has_name (int *,int ) ;

__attribute__((used)) static bool bus_error_shall_fallback(sd_bus_error *e) {
        return sd_bus_error_has_name(e, SD_BUS_ERROR_SERVICE_UNKNOWN) ||
               sd_bus_error_has_name(e, SD_BUS_ERROR_NAME_HAS_NO_OWNER) ||
               sd_bus_error_has_name(e, SD_BUS_ERROR_NO_REPLY) ||
               sd_bus_error_has_name(e, SD_BUS_ERROR_ACCESS_DENIED) ||
               sd_bus_error_has_name(e, SD_BUS_ERROR_DISCONNECTED) ||
               sd_bus_error_has_name(e, SD_BUS_ERROR_TIMEOUT);
}
