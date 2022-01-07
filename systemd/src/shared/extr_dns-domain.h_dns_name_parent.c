
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_LABEL_MAX ;
 int dns_label_unescape (char const**,int *,int ,int ) ;

__attribute__((used)) static inline int dns_name_parent(const char **name) {
        return dns_label_unescape(name, ((void*)0), DNS_LABEL_MAX, 0);
}
