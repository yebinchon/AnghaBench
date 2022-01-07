
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;


 int AF_INET ;
 int AF_INET6 ;
 int EINVAL ;
 int assert (char const*) ;
 int in_addr_from_string (int,char const*,union in_addr_union*) ;

int in_addr_from_string_auto(const char *s, int *ret_family, union in_addr_union *ret) {
        int r;

        assert(s);

        r = in_addr_from_string(AF_INET, s, ret);
        if (r >= 0) {
                if (ret_family)
                        *ret_family = AF_INET;
                return 0;
        }

        r = in_addr_from_string(AF_INET6, s, ret);
        if (r >= 0) {
                if (ret_family)
                        *ret_family = AF_INET6;
                return 0;
        }

        return -EINVAL;
}
