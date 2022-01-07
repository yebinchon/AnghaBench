
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t size; TYPE_1__* data; } ;
typedef TYPE_2__ param_values_t ;
struct TYPE_7__ {TYPE_2__ param_values; } ;
typedef TYPE_3__ config_t ;
struct TYPE_5__ {scalar_t__ param; scalar_t__ value; } ;


 int CONFIG_NO_LEVEL ;
 scalar_t__ ZSTD_c_compressionLevel ;

int config_get_level(config_t const* config)
{
    param_values_t const params = config->param_values;
    size_t i;
    for (i = 0; i < params.size; ++i) {
        if (params.data[i].param == ZSTD_c_compressionLevel)
            return (int)params.data[i].value;
    }
    return CONFIG_NO_LEVEL;
}
