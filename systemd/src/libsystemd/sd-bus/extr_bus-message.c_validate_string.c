
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_is_valid (char const*) ;
 int validate_nul (char const*,size_t) ;

__attribute__((used)) static bool validate_string(const char *s, size_t l) {

        if (!validate_nul(s, l))
                return 0;


        if (!utf8_is_valid(s))
                return 0;

        return 1;
}
