
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DNS_LABEL_MAX ;
 char* TAKE_PTR (char const*) ;
 scalar_t__ ascii_strcasecmp_n (char*,char*,int) ;
 int assert (char const*) ;
 int dns_label_unescape (char const**,char*,int,int ) ;

int dns_name_endswith(const char *name, const char *suffix) {
        const char *n, *s, *saved_n = ((void*)0);
        int r, q;

        assert(name);
        assert(suffix);

        n = name;
        s = suffix;

        for (;;) {
                char ln[DNS_LABEL_MAX], ls[DNS_LABEL_MAX];

                r = dns_label_unescape(&n, ln, sizeof ln, 0);
                if (r < 0)
                        return r;

                if (!saved_n)
                        saved_n = n;

                q = dns_label_unescape(&s, ls, sizeof ls, 0);
                if (q < 0)
                        return q;

                if (r == 0 && q == 0)
                        return 1;
                if (r == 0 && saved_n == n)
                        return 0;

                if (r != q || ascii_strcasecmp_n(ln, ls, r) != 0) {


                        s = suffix;
                        n = TAKE_PTR(saved_n);
                }
        }
}
