
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_LABEL_MAX ;
 scalar_t__ ascii_strcasecmp_n (char*,char*,int) ;
 int assert (char const*) ;
 int dns_label_unescape (char const**,char*,int,int ) ;

int dns_name_startswith(const char *name, const char *prefix) {
        const char *n, *p;
        int r, q;

        assert(name);
        assert(prefix);

        n = name;
        p = prefix;

        for (;;) {
                char ln[DNS_LABEL_MAX], lp[DNS_LABEL_MAX];

                r = dns_label_unescape(&p, lp, sizeof lp, 0);
                if (r < 0)
                        return r;
                if (r == 0)
                        return 1;

                q = dns_label_unescape(&n, ln, sizeof ln, 0);
                if (q < 0)
                        return q;

                if (r != q)
                        return 0;
                if (ascii_strcasecmp_n(ln, lp, r) != 0)
                        return 0;
        }
}
