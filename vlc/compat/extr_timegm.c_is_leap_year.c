
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static bool is_leap_year(unsigned y)
{
    if (y % 4)
        return 0;
    if (y % 100)
        return 1;
    if (y % 400)
        return 0;
    return 1;
}
