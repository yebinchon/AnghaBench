
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int dns_name_normalize (char const*,int ,int *) ;

__attribute__((used)) static inline int dns_name_is_valid(const char *s) {
        int r;


        r = dns_name_normalize(s, 0, ((void*)0));
        if (r == -EINVAL)
                return 0;
        if (r < 0)
                return r;
        return 1;
}
