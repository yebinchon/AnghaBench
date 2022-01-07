
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int test_bus_gvariant_get_alignment () ;
 int test_bus_gvariant_get_size () ;
 int test_bus_gvariant_is_fixed_size () ;
 int test_marshal () ;
 int test_setup_logging (int ) ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_bus_gvariant_is_fixed_size();
        test_bus_gvariant_get_size();
        test_bus_gvariant_get_alignment();

        return test_marshal();
}
