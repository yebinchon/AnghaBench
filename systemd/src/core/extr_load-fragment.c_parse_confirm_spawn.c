
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOMEM ;
 scalar_t__ is_path (char const*) ;
 int parse_boolean (char const*) ;
 char* path_join (char*,char const*) ;
 char* strdup (char const*) ;

int parse_confirm_spawn(const char *value, char **console) {
        char *s;
        int r;

        r = value ? parse_boolean(value) : 1;
        if (r == 0) {
                *console = ((void*)0);
                return 0;
        } else if (r > 0)
                s = strdup("/dev/console");
        else if (is_path(value))
                s = strdup(value);
        else
                s = path_join("/dev/", value);
        if (!s)
                return -ENOMEM;

        *console = s;
        return 0;
}
