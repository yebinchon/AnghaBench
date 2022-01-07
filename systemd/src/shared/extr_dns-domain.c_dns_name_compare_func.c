
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lb ;
typedef int la ;


 int CMP (int,int) ;
 int DNS_LABEL_MAX ;
 int ascii_strcasecmp_nn (char*,int,char*,int) ;
 int assert (char const*) ;
 int dns_label_unescape_suffix (char const*,char const**,char*,int) ;
 int strlen (char const*) ;

int dns_name_compare_func(const char *a, const char *b) {
        const char *x, *y;
        int r, q;

        assert(a);
        assert(b);

        x = a + strlen(a);
        y = b + strlen(b);

        for (;;) {
                char la[DNS_LABEL_MAX], lb[DNS_LABEL_MAX];

                if (x == ((void*)0) && y == ((void*)0))
                        return 0;

                r = dns_label_unescape_suffix(a, &x, la, sizeof(la));
                q = dns_label_unescape_suffix(b, &y, lb, sizeof(lb));
                if (r < 0 || q < 0)
                        return CMP(r, q);

                r = ascii_strcasecmp_nn(la, r, lb, q);
                if (r != 0)
                        return r;
        }
}
