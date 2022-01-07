
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (char const*) ;
 int dns_service_name_is_valid (char*) ;
 scalar_t__ memchr (char const*,int ,size_t) ;
 char* strndupa (char const*,size_t) ;

__attribute__((used)) static bool dns_service_name_label_is_valid(const char *label, size_t n) {
        char *s;

        assert(label);

        if (memchr(label, 0, n))
                return 0;

        s = strndupa(label, n);
        return dns_service_name_is_valid(s);
}
