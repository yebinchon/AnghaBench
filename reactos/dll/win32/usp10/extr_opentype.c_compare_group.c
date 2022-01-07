
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int endCharCode; int startCharCode; } ;
typedef scalar_t__ DWORD ;
typedef TYPE_1__ CMAP_SegmentedCoverage_group ;


 scalar_t__ const GET_BE_DWORD (int ) ;

__attribute__((used)) static int compare_group(const void *a, const void* b)
{
    const DWORD *chr = a;
    const CMAP_SegmentedCoverage_group *group = b;

    if (*chr < GET_BE_DWORD(group->startCharCode))
        return -1;
    if (*chr > GET_BE_DWORD(group->endCharCode))
        return 1;
    return 0;
}
