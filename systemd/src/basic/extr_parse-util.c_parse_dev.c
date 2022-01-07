
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int DEVICE_MAJOR_VALID (unsigned int) ;
 int DEVICE_MINOR_VALID (unsigned int) ;
 int DIGITS ;
 int EINVAL ;
 int ERANGE ;
 int makedev (unsigned int,unsigned int) ;
 int safe_atou (char const*,unsigned int*) ;
 char* strndupa (char const*,size_t) ;
 size_t strspn (char const*,int ) ;

int parse_dev(const char *s, dev_t *ret) {
        const char *major;
        unsigned x, y;
        size_t n;
        int r;

        n = strspn(s, DIGITS);
        if (n == 0)
                return -EINVAL;
        if (s[n] != ':')
                return -EINVAL;

        major = strndupa(s, n);
        r = safe_atou(major, &x);
        if (r < 0)
                return r;

        r = safe_atou(s + n + 1, &y);
        if (r < 0)
                return r;

        if (!DEVICE_MAJOR_VALID(x) || !DEVICE_MINOR_VALID(y))
                return -ERANGE;

        *ret = makedev(x, y);
        return 0;
}
