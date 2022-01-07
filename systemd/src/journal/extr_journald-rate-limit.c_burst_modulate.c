
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 unsigned int u64log2 (int ) ;

__attribute__((used)) static unsigned burst_modulate(unsigned burst, uint64_t available) {
        unsigned k;




        k = u64log2(available);


        if (k <= 20)
                return burst;

        burst = (burst * (k-16)) / 4;
        return burst;
}
