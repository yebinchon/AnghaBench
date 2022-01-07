
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rlimit {int dummy; } ;


 int _RLIMIT_MAX ;
 int assert (struct rlimit const* const*) ;
 int setrlimit_closest (int,struct rlimit const* const) ;

int setrlimit_closest_all(const struct rlimit *const *rlim, int *which_failed) {
        int i, r;

        assert(rlim);



        for (i = 0; i < _RLIMIT_MAX; i++) {
                if (!rlim[i])
                        continue;

                r = setrlimit_closest(i, rlim[i]);
                if (r < 0) {
                        if (which_failed)
                                *which_failed = i;

                        return r;
                }
        }

        if (which_failed)
                *which_failed = -1;

        return 0;
}
