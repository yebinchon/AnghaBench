
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_5__ {int _need_free; int message; int name; } ;
typedef TYPE_1__ sd_bus_error ;


 TYPE_1__ BUS_ERROR_OOM ;
 int EINVAL ;
 int ENOMEM ;
 int assert_return (int,int ) ;
 int bus_error_is_dirty (TYPE_1__*) ;
 int bus_error_name_to_errno (char const*) ;
 int strdup (char const*) ;
 int vasprintf (char**,char const*,int ) ;

int bus_error_setfv(sd_bus_error *e, const char *name, const char *format, va_list ap) {

        if (!name)
                return 0;

        if (e) {
                assert_return(!bus_error_is_dirty(e), -EINVAL);

                e->name = strdup(name);
                if (!e->name) {
                        *e = BUS_ERROR_OOM;
                        return -ENOMEM;
                }



                if (format)
                        (void) vasprintf((char**) &e->message, format, ap);

                e->_need_free = 1;
        }

        return -bus_error_name_to_errno(name);
}
