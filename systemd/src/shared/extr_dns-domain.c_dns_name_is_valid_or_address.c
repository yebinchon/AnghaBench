
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dns_name_is_valid (char const*) ;
 scalar_t__ in_addr_from_string_auto (char const*,int *,int *) ;
 scalar_t__ isempty (char const*) ;

int dns_name_is_valid_or_address(const char *name) {


        if (isempty(name))
                return 0;

        if (in_addr_from_string_auto(name, ((void*)0), ((void*)0)) >= 0)
                return 1;

        return dns_name_is_valid(name);
}
