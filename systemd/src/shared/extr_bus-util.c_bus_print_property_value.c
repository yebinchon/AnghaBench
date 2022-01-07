
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int printf (char*,char const*,char const*) ;
 int puts (char const*) ;
 int streq_ptr (char const*,char const*) ;

int bus_print_property_value(const char *name, const char *expected_value, bool only_value, const char *value) {
        assert(name);

        if (expected_value && !streq_ptr(expected_value, value))
                return 0;

        if (only_value)
                puts(value);
        else
                printf("%s=%s\n", name, value);

        return 0;
}
