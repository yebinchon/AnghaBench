
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usp10_script_range {scalar_t__ const rangeFirst; scalar_t__ const rangeLast; } ;
typedef scalar_t__ DWORD ;



__attribute__((used)) static int usp10_compare_script_range(const void *key, const void *value)
{
    const struct usp10_script_range *range = value;
    const DWORD *ch = key;

    if (*ch < range->rangeFirst)
        return -1;
    if (*ch > range->rangeLast)
        return 1;
    return 0;
}
