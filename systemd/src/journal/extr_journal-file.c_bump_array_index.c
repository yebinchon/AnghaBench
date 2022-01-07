
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ direction_t ;


 scalar_t__ DIRECTION_DOWN ;

__attribute__((used)) static int bump_array_index(uint64_t *i, direction_t direction, uint64_t n) {



        if (direction == DIRECTION_DOWN) {
                if (*i >= n - 1)
                        return 0;

                (*i) ++;
        } else {
                if (*i <= 0)
                        return 0;

                (*i) --;
        }

        return 1;
}
