
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int DNS_N_LABELS_MAX ;
 int EINVAL ;
 int assert (char const*) ;
 int dns_name_parent (char const**) ;

int dns_name_count_labels(const char *name) {
        unsigned n = 0;
        const char *p;
        int r;

        assert(name);

        p = name;
        for (;;) {
                r = dns_name_parent(&p);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                if (n >= DNS_N_LABELS_MAX)
                        return -EINVAL;

                n++;
        }

        return (int) n;
}
