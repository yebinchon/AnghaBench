
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline short M16(short l, short r)
{
    int sum = l + r;


    if (sum > 32767)
        sum = 32767;
    else if (sum < -32768)
        sum = -32768;

    return sum;
}
