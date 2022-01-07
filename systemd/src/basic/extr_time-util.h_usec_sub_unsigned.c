
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 scalar_t__ USEC_INFINITY ;

__attribute__((used)) static inline usec_t usec_sub_unsigned(usec_t timestamp, usec_t delta) {

        if (timestamp == USEC_INFINITY)
                return USEC_INFINITY;
        if (timestamp < delta)
                return 0;

        return timestamp - delta;
}
