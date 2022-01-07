
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HOST_NAME_MAX ;
 scalar_t__ IN_SET (char,char,char) ;
 int assert (char*) ;
 scalar_t__ valid_ldh_char (char) ;

char* hostname_cleanup(char *s) {
        char *p, *d;
        bool dot, hyphen;

        assert(s);

        for (p = s, d = s, dot = hyphen = 1; *p && d - s < HOST_NAME_MAX; p++)
                if (*p == '.') {
                        if (dot || hyphen)
                                continue;

                        *(d++) = '.';
                        dot = 1;
                        hyphen = 0;

                } else if (*p == '-') {
                        if (dot)
                                continue;

                        *(d++) = '-';
                        dot = 0;
                        hyphen = 1;

                } else if (valid_ldh_char(*p)) {
                        *(d++) = *p;
                        dot = 0;
                        hyphen = 0;
                }

        if (d > s && IN_SET(d[-1], '-', '.'))


                d--;
        *d = 0;

        return s;
}
