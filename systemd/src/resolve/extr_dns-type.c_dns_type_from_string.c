
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dns_type_name {int id; } ;


 unsigned int UINT16_MAX ;
 int _DNS_TYPE_INVALID ;
 int assert (char const*) ;
 struct dns_type_name* lookup_dns_type (char const*,int ) ;
 scalar_t__ safe_atou (char const*,unsigned int*) ;
 char* startswith_no_case (char const*,char*) ;
 int strlen (char const*) ;

int dns_type_from_string(const char *s) {
        const struct dns_type_name *sc;

        assert(s);

        sc = lookup_dns_type(s, strlen(s));
        if (sc)
                return sc->id;

        s = startswith_no_case(s, "TYPE");
        if (s) {
                unsigned x;

                if (safe_atou(s, &x) >= 0 &&
                    x <= UINT16_MAX)
                        return (int) x;
        }

        return _DNS_TYPE_INVALID;
}
