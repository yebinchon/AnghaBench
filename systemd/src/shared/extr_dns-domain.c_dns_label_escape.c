
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 size_t DNS_LABEL_MAX ;
 int EINVAL ;
 int ENOBUFS ;
 scalar_t__ IN_SET (char const,char,char) ;
 int assert (char const*) ;

int dns_label_escape(const char *p, size_t l, char *dest, size_t sz) {
        char *q;





        if (l <= 0 || l > DNS_LABEL_MAX)
                return -EINVAL;
        if (sz < 1)
                return -ENOBUFS;

        assert(p);
        assert(dest);

        q = dest;
        while (l > 0) {

                if (IN_SET(*p, '.', '\\')) {



                        if (sz < 3)
                                return -ENOBUFS;

                        *(q++) = '\\';
                        *(q++) = *p;

                        sz -= 2;

                } else if (IN_SET(*p, '_', '-') ||
                           (*p >= '0' && *p <= '9') ||
                           (*p >= 'a' && *p <= 'z') ||
                           (*p >= 'A' && *p <= 'Z')) {



                        if (sz < 2)
                                return -ENOBUFS;

                        *(q++) = *p;
                        sz -= 1;

                } else {



                        if (sz < 5)
                                return -ENOBUFS;

                        *(q++) = '\\';
                        *(q++) = '0' + (char) ((uint8_t) *p / 100);
                        *(q++) = '0' + (char) (((uint8_t) *p / 10) % 10);
                        *(q++) = '0' + (char) ((uint8_t) *p % 10);

                        sz -= 4;
                }

                p++;
                l--;
        }

        *q = 0;
        return (int) (q - dest);
}
