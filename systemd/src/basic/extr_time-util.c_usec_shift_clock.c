
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;
typedef int clockid_t ;


 scalar_t__ USEC_INFINITY ;
 scalar_t__ map_clock_id (int ) ;
 scalar_t__ now (int ) ;
 scalar_t__ usec_add (scalar_t__,scalar_t__) ;
 scalar_t__ usec_sub_unsigned (scalar_t__,scalar_t__) ;

usec_t usec_shift_clock(usec_t x, clockid_t from, clockid_t to) {
        usec_t a, b;

        if (x == USEC_INFINITY)
                return USEC_INFINITY;
        if (map_clock_id(from) == map_clock_id(to))
                return x;

        a = now(from);
        b = now(to);

        if (x > a)

                return usec_add(b, usec_sub_unsigned(x, a));
        else

                return usec_sub_unsigned(b, usec_sub_unsigned(a, x));
}
