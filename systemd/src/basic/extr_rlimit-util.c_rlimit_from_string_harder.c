
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rlimit_from_string (char const*) ;
 char* startswith (char const*,char*) ;

int rlimit_from_string_harder(const char *s) {
        const char *suffix;


        suffix = startswith(s, "RLIMIT_");
        if (suffix)
                return rlimit_from_string(suffix);


        suffix = startswith(s, "Limit");
        if (suffix)
                return rlimit_from_string(suffix);

        return rlimit_from_string(s);
}
