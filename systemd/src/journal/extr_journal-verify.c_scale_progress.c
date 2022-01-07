
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t scale_progress(uint64_t scale, uint64_t p, uint64_t m) {




        if (p >= m || m == 0)
                return scale;

        return scale * p / m;
}
