
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_LABEL_LDH ;
 int DNS_LABEL_NO_ESCAPES ;
 int EINVAL ;
 int dns_name_concat (char const*,int *,int,int *) ;

__attribute__((used)) static inline int dns_name_is_valid_ldh(const char *s) {
        int r;

        r = dns_name_concat(s, ((void*)0), DNS_LABEL_LDH|DNS_LABEL_NO_ESCAPES, ((void*)0));
        if (r == -EINVAL)
                return 0;
        if (r < 0)
                return r;
        return 1;
}
