
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;


 int assert (int) ;

__attribute__((used)) static uint64_t rotate_left(uint64_t x, uint8_t b) {
        assert(b < 64);

        return (x << b) | (x >> (64 - b));
}
