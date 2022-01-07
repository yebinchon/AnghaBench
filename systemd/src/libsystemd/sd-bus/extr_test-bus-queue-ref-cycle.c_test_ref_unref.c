
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_message ;
typedef int sd_bus ;


 int assert_se (int) ;
 int log_tests_skipped (char*) ;
 scalar_t__ sd_bus_message_new_method_call (int *,int **,char*,char*,char*,char*) ;
 int * sd_bus_message_unref (int *) ;
 int sd_bus_open_system (int **) ;
 scalar_t__ sd_bus_send (int *,int *,int *) ;
 int * sd_bus_unref (int *) ;

__attribute__((used)) static int test_ref_unref(void) {
        sd_bus_message *m = ((void*)0);
        sd_bus *bus = ((void*)0);
        int r;




        r = sd_bus_open_system(&bus);
        if (r < 0)
                return log_tests_skipped("Failed to connect to bus");


        assert_se(sd_bus_message_new_method_call(bus, &m, "foo.bar", "/foo", "quux.quux", "waldo") >= 0);
        assert_se(sd_bus_send(bus, m, ((void*)0)) >= 0);


        m = sd_bus_message_unref(m);
        bus = sd_bus_unref(bus);




        r = sd_bus_open_system(&bus);
        if (r < 0)
                return log_tests_skipped("Failed to connect to bus");

        assert_se(sd_bus_message_new_method_call(bus, &m, "foo.bar", "/foo", "quux.quux", "waldo") >= 0);
        assert_se(sd_bus_send(bus, m, ((void*)0)) >= 0);


        bus = sd_bus_unref(bus);
        m = sd_bus_message_unref(m);

        return 0;
}
