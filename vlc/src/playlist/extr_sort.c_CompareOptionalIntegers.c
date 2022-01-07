
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int64_t ;


 int CompareIntegers (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline int
CompareOptionalIntegers(bool has_a, int64_t a, bool has_b, int64_t b)
{
    if (has_a && has_b)
        return CompareIntegers(a, b);

    if (!has_a && !has_b)
        return 0;

    return a ? 1 : -1;
}
