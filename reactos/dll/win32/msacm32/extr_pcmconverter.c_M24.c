
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGLONG ;



__attribute__((used)) static inline int M24(int l, int r)
{
    LONGLONG sum = l + r;


    if (sum > 0x7fffff00)
        sum = 0x7fffff00;
    else if (sum < -0x7fffff00)
        sum = -0x7fffff00;

    return sum;
}
