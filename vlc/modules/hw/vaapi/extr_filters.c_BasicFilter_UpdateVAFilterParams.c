
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int drv_value; } ;
struct basic_filter_data {TYPE_1__ sigma; } ;
struct TYPE_4__ {int value; } ;
typedef TYPE_2__ VAProcFilterParameterBuffer ;


 int vlc_atomic_load_float (int *) ;

__attribute__((used)) static void
BasicFilter_UpdateVAFilterParams(void * p_data, void * va_params)
{
    struct basic_filter_data *const p_basic_filter_data = p_data;
    VAProcFilterParameterBuffer *const p_va_param = va_params;

    p_va_param->value =
        vlc_atomic_load_float(&p_basic_filter_data->sigma.drv_value);
}
