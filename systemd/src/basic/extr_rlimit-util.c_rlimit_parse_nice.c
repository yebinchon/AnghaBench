
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef scalar_t__ rlim_t ;


 int ERANGE ;
 scalar_t__ PRIO_MAX ;
 int PRIO_MIN ;
 int safe_atou64 (char const*,scalar_t__*) ;

__attribute__((used)) static int rlimit_parse_nice(const char *val, rlim_t *ret) {
        uint64_t rl;
        int r;
        if (val[0] == '+') {


                r = safe_atou64(val + 1, &rl);
                if (r < 0)
                        return r;

                if (rl >= PRIO_MAX)
                        return -ERANGE;

                rl = 20 - rl;

        } else if (val[0] == '-') {


                r = safe_atou64(val + 1, &rl);
                if (r < 0)
                        return r;

                if (rl > (uint64_t) (-PRIO_MIN))
                        return -ERANGE;

                rl = 20 + rl;
        } else {


                r = safe_atou64(val, &rl);
                if (r < 0)
                        return r;

                if (rl > (uint64_t) (20 - PRIO_MIN))
                        return -ERANGE;
        }

        *ret = (rlim_t) rl;
        return 0;
}
