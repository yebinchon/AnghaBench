
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERANGE ;
 int assert (char const*) ;
 int errno_from_name (char const*) ;
 int errno_is_valid (int) ;
 int safe_atoi (char const*,int*) ;

int parse_errno(const char *t) {
        int r, e;

        assert(t);

        r = errno_from_name(t);
        if (r > 0)
                return r;

        r = safe_atoi(t, &e);
        if (r < 0)
                return r;


        if (!errno_is_valid(e) && e != 0)
                return -ERANGE;

        return e;
}
