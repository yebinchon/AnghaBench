
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int errno ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static int parse_one_number(const char *p, const char **e, unsigned long *ret) {
        char *ee = ((void*)0);
        unsigned long value;

        errno = 0;
        value = strtoul(p, &ee, 10);
        if (errno > 0)
                return -errno;
        if (ee == p)
                return -EINVAL;

        *ret = value;
        *e = ee;
        return 0;
}
