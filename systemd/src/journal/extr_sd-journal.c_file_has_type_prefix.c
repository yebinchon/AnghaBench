
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STR_IN_SET (char const*,char const*,char const*) ;
 scalar_t__ startswith (char const*,char const*) ;
 char* strjoina (char const*,char*) ;

__attribute__((used)) static bool file_has_type_prefix(const char *prefix, const char *filename) {
        const char *full, *tilded, *atted;

        full = strjoina(prefix, ".journal");
        tilded = strjoina(full, "~");
        atted = strjoina(prefix, "@");

        return STR_IN_SET(filename, full, tilded) ||
               startswith(filename, atted);
}
