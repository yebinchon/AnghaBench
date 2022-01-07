
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus ;


 int arg_all ;
 int arg_property ;
 int arg_value ;
 int assert (int *) ;
 int bus_log_parse_error (int) ;
 int bus_print_all_properties (int *,char*,char*,int *,int ,int ,int ,int *) ;

__attribute__((used)) static int show_properties(int argc, char **argv, void *userdata) {
        sd_bus *bus = userdata;
        int r;

        assert(bus);

        r = bus_print_all_properties(bus,
                                     "org.freedesktop.timedate1",
                                     "/org/freedesktop/timedate1",
                                     ((void*)0),
                                     arg_property,
                                     arg_value,
                                     arg_all,
                                     ((void*)0));
        if (r < 0)
                return bus_log_parse_error(r);

        return 0;
}
