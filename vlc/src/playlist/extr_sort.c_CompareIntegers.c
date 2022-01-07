
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;



__attribute__((used)) static inline int
CompareIntegers(int64_t a, int64_t b)
{
    if (a < b)
        return -1;
    if (a > b)
        return 1;
    return 0;
}
