
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static uint64_t calc_gcd64(uint64_t a, uint64_t b) {

        while (b > 0) {
                uint64_t t;

                t = a % b;

                a = b;
                b = t;
        }

        return a;
}
