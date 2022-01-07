
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WHITESPACE ;
 int assert (char const**) ;
 scalar_t__ strchr (int ,char const) ;
 size_t strcspn (char const*,int ) ;
 char* strndup (char const*,size_t) ;
 int strspn (char const*,int ) ;

size_t syslog_parse_identifier(const char **buf, char **identifier, char **pid) {
        const char *p;
        char *t;
        size_t l, e;

        assert(buf);
        assert(identifier);
        assert(pid);

        p = *buf;

        p += strspn(p, WHITESPACE);
        l = strcspn(p, WHITESPACE);

        if (l <= 0 ||
            p[l-1] != ':')
                return 0;

        e = l;
        l--;

        if (l > 0 && p[l-1] == ']') {
                size_t k = l-1;

                for (;;) {

                        if (p[k] == '[') {
                                t = strndup(p+k+1, l-k-2);
                                if (t)
                                        *pid = t;

                                l = k;
                                break;
                        }

                        if (k == 0)
                                break;

                        k--;
                }
        }

        t = strndup(p, l);
        if (t)
                *identifier = t;


        if (p[e] != '\0' && strchr(WHITESPACE, p[e]))
                e++;

        l = (p - *buf) + e;
        *buf = p + e;
        return l;
}
