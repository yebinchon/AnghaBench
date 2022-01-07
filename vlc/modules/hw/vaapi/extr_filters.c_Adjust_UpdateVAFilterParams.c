
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct adjust_params {TYPE_1__* sigma; } ;
struct adjust_data {struct adjust_params params; } ;
struct TYPE_4__ {int value; } ;
typedef TYPE_2__ VAProcFilterParameterBufferColorBalance ;
struct TYPE_3__ {int drv_value; scalar_t__ is_available; } ;


 unsigned int NUM_ADJUST_MODES ;
 int vlc_atomic_load_float (int *) ;

__attribute__((used)) static void
Adjust_UpdateVAFilterParams(void * p_data, void * va_params)
{
    struct adjust_data *const p_adjust_data = p_data;
    struct adjust_params *const p_adjust_params = &p_adjust_data->params;
    VAProcFilterParameterBufferColorBalance *const p_va_params = va_params;

    unsigned int i = 0;
    for (unsigned int j = 0; j < NUM_ADJUST_MODES; ++j)
        if (p_adjust_params->sigma[j].is_available)
            p_va_params[i++].value =
                vlc_atomic_load_float(&p_adjust_params->sigma[j].drv_value);
}
