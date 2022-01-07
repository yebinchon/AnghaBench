
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int ENOBUFS ;
 int ascii_strlower_n (char*,size_t) ;
 int assert (int) ;
 int dns_label_unescape (char const**,char*,size_t,int ) ;
 scalar_t__ memchr (char*,char,int) ;

int dnssec_canonicalize(const char *n, char *buffer, size_t buffer_max) {
        size_t c = 0;
        int r;




        if (buffer_max < 2)
                return -ENOBUFS;

        for (;;) {
                r = dns_label_unescape(&n, buffer, buffer_max, 0);
                if (r < 0)
                        return r;
                if (r == 0)
                        break;

                if (buffer_max < (size_t) r + 2)
                        return -ENOBUFS;





                if (memchr(buffer, '.', r))
                        return -EINVAL;

                ascii_strlower_n(buffer, (size_t) r);
                buffer[r] = '.';

                buffer += r + 1;
                c += r + 1;

                buffer_max -= r + 1;
        }

        if (c <= 0) {


                assert(buffer_max > 2);
                buffer[0] = '.';
                buffer[1] = 0;

                return 1;
        }

        return (int) c;
}
