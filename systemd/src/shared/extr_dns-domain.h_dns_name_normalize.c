
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DNSLabelFlags ;


 int dns_name_concat (char const*,int *,int ,char**) ;

__attribute__((used)) static inline int dns_name_normalize(const char *s, DNSLabelFlags flags, char **ret) {

        return dns_name_concat(s, ((void*)0), flags, ret);
}
