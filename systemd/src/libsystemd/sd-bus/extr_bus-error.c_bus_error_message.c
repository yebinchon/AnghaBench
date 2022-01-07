
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* message; } ;
typedef TYPE_1__ sd_bus_error ;


 int SD_BUS_ERROR_ACCESS_DENIED ;
 scalar_t__ sd_bus_error_has_name (TYPE_1__ const*,int ) ;
 char const* strerror_safe (int) ;

const char *bus_error_message(const sd_bus_error *e, int error) {

        if (e) {


                if (sd_bus_error_has_name(e, SD_BUS_ERROR_ACCESS_DENIED))
                        return "Access denied";

                if (e->message)
                        return e->message;
        }

        if (error < 0)
                error = -error;

        return strerror_safe(error);
}
