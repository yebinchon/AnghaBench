
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_bus_error ;
typedef int sd_bus ;


 int assert_se (char**) ;
 scalar_t__ object_path_startswith (char*,char const*) ;
 char** strv_new (char*,char*,char*) ;

__attribute__((used)) static int enumerator_callback(sd_bus *bus, const char *path, void *userdata, char ***nodes, sd_bus_error *error) {

        if (object_path_startswith("/value", path))
                assert_se(*nodes = strv_new("/value/a", "/value/b", "/value/c"));

        return 1;
}
