
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ func_info_t ;


 int strcmpiW (int ,int ) ;

__attribute__((used)) static int func_name_cmp(const void *p1, const void *p2)
{
    return strcmpiW((*(func_info_t* const*)p1)->name, (*(func_info_t* const*)p2)->name);
}
