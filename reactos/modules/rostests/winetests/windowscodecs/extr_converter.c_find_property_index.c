
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_3__ {int pstrName; } ;
typedef TYPE_1__ PROPBAG2 ;


 scalar_t__ lstrcmpW (int const*,int ) ;

__attribute__((used)) static int find_property_index(const WCHAR* name, PROPBAG2* all_props, int all_prop_cnt)
{
    int i;
    for (i=0; i < all_prop_cnt; i++)
    {
        if (lstrcmpW(name, all_props[i].pstrName) == 0)
            return i;
    }
    return -1;
}
