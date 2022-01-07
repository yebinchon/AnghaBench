
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ELEMENTSOF (char const* const*) ;
 scalar_t__ string_table_lookup (char const* const*,int ,char const*) ;

__attribute__((used)) static bool skip_attribute(const char *name) {
        static const char* const skip[] = {
                "uevent",
                "dev",
                "modalias",
                "resource",
                "driver",
                "subsystem",
                "module",
        };

        return string_table_lookup(skip, ELEMENTSOF(skip), name) >= 0;
}
