
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t ngx_uint_t ;
struct TYPE_6__ {size_t index; } ;
typedef TYPE_2__ ngx_module_t ;
struct TYPE_7__ {TYPE_1__* old_cycle; TYPE_2__** modules; } ;
typedef TYPE_3__ ngx_cycle_t ;
struct TYPE_5__ {TYPE_2__** modules; } ;



__attribute__((used)) static ngx_uint_t
ngx_module_index(ngx_cycle_t *cycle)
{
    ngx_uint_t i, index;
    ngx_module_t *module;

    index = 0;

again:



    for (i = 0; cycle->modules[i]; i++) {
        module = cycle->modules[i];

        if (module->index == index) {
            index++;
            goto again;
        }
    }



    if (cycle->old_cycle && cycle->old_cycle->modules) {

        for (i = 0; cycle->old_cycle->modules[i]; i++) {
            module = cycle->old_cycle->modules[i];

            if (module->index == index) {
                index++;
                goto again;
            }
        }
    }

    return index;
}
