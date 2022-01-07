
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int path_is_absolute (char const*) ;

__attribute__((used)) static bool source_path_is_valid(const char *p) {
        assert(p);

        if (*p == '+')
                p++;

        return path_is_absolute(p);
}
