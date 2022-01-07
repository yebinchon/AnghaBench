
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 int assert (char const*) ;
 int safe_atoi (char const*,int*) ;
 char* skip_dev_prefix (char const*) ;
 int startswith (char const*,char*) ;

int vtnr_from_tty(const char *tty) {
        int i, r;

        assert(tty);

        tty = skip_dev_prefix(tty);

        if (!startswith(tty, "tty") )
                return -EINVAL;

        if (tty[3] < '0' || tty[3] > '9')
                return -EINVAL;

        r = safe_atoi(tty+3, &i);
        if (r < 0)
                return r;

        if (i < 0 || i > 63)
                return -EINVAL;

        return i;
}
