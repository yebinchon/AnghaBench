
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static uint8_t odd_min9_is_prime(size_t value)
{
    size_t i = 3;

    while (i * i <= value) {
        if (!(value % i))
            return 0;

        i += 2;
    }

    return 1;
}
