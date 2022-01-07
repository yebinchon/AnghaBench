
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_vtable ;


 int LOG_DEBUG ;
 int test_manual_introspection (int const*) ;
 int test_setup_logging (int ) ;
 int const* test_vtable_1 ;
 int const* test_vtable_2 ;
 int const* test_vtable_deprecated ;
 scalar_t__ vtable_format_221 ;

int main(int argc, char *argv[]) {
        test_setup_logging(LOG_DEBUG);

        test_manual_introspection(test_vtable_1);
        test_manual_introspection(test_vtable_2);
        test_manual_introspection(test_vtable_deprecated);
        test_manual_introspection((const sd_bus_vtable *) vtable_format_221);

        return 0;
}
