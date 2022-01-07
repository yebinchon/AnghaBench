
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline unsigned char M8(unsigned char a, unsigned char b)
{
    int l = a - 128;
    int r = b - 128;
    int sum = (l + r) + 128;


    if (sum > 0xff)
        sum = 0xff;
    else if (sum < 0)
        sum = 0;

    return sum;
}
