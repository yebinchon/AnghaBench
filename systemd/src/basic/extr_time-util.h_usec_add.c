
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ usec_t ;


 scalar_t__ USEC_INFINITY ;

__attribute__((used)) static inline usec_t usec_add(usec_t a, usec_t b) {
        usec_t c;




        c = a + b;
        if (c < a || c < b)
                return USEC_INFINITY;

        return c;
}
