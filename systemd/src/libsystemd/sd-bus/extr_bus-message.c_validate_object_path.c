
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int object_path_is_valid (char const*) ;
 int validate_nul (char const*,size_t) ;

__attribute__((used)) static bool validate_object_path(const char *s, size_t l) {

        if (!validate_nul(s, l))
                return 0;

        if (!object_path_is_valid(s))
                return 0;

        return 1;
}
