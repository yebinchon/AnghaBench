
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int one_zero (int) ;
 int sysctl_write_ip_property (int,char const*,char const*,int ) ;

__attribute__((used)) static inline int sysctl_write_ip_property_boolean(int af, const char *ifname, const char *property, bool value) {
        return sysctl_write_ip_property(af, ifname, property, one_zero(value));
}
