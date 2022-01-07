
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;


 int AF_INET ;
 int AF_INET6 ;
 int EAFNOSUPPORT ;
 int EINVAL ;
 int IN_SET (int,int ,int ) ;
 int assert (char const*) ;
 scalar_t__ errno ;
 int errno_or_else (int ) ;
 scalar_t__ inet_pton (int,char const*,union in_addr_union*) ;

int in_addr_from_string(int family, const char *s, union in_addr_union *ret) {
        union in_addr_union buffer;
        assert(s);

        if (!IN_SET(family, AF_INET, AF_INET6))
                return -EAFNOSUPPORT;

        errno = 0;
        if (inet_pton(family, s, ret ?: &buffer) <= 0)
                return errno_or_else(EINVAL);

        return 0;
}
