
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* hooks; } ;
typedef TYPE_1__ expect_shim_data ;
struct TYPE_5__ {scalar_t__ Library; } ;
typedef size_t DWORD ;


 size_t _countof (TYPE_3__*) ;

__attribute__((used)) static DWORD count_shims(expect_shim_data* data)
{
    DWORD num;
    for (num = 0; num < _countof(data->hooks) && data->hooks[num].Library;)
    {
        ++num;
    }
    return num;
}
