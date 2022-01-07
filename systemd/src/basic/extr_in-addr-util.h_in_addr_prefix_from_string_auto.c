
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union in_addr_union {int dummy; } in_addr_union ;


 int PREFIXLEN_FULL ;
 int in_addr_prefix_from_string_auto_internal (char const*,int ,int*,union in_addr_union*,unsigned char*) ;

__attribute__((used)) static inline int in_addr_prefix_from_string_auto(const char *p, int *ret_family, union in_addr_union *ret_prefix, unsigned char *ret_prefixlen) {
        return in_addr_prefix_from_string_auto_internal(p, PREFIXLEN_FULL, ret_family, ret_prefix, ret_prefixlen);
}
