
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint32_t ;
struct adjust_params {TYPE_2__* sigma; } ;
struct adjust_data {int num_available_modes; struct adjust_params params; } ;
struct TYPE_17__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_15__ {int ctx; int dpy; } ;
struct TYPE_18__ {TYPE_1__ va; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_19__ {scalar_t__ attrib; int type; } ;
typedef TYPE_5__ VAProcFilterParameterBufferColorBalance ;
struct TYPE_20__ {scalar_t__ type; int range; } ;
typedef TYPE_6__ VAProcFilterCapColorBalance ;
struct TYPE_21__ {int max_value; int min_value; } ;
struct TYPE_16__ {int is_available; int drv_value; int drv_range; } ;


 float GET_DRV_SIGMA (float,TYPE_8__,int ) ;
 unsigned int NUM_ADJUST_MODES ;
 int VAProcColorBalanceCount ;
 int VAProcFilterColorBalance ;
 float VLC_CLIP (int ,int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_3__*) ;
 int VLC_SUCCESS ;
 float adapt_adjust_sigma (int ,float,TYPE_8__*) ;
 int * adjust_params_names ;
 TYPE_5__* calloc (int,int) ;
 scalar_t__* va_adjust_modes ;
 int var_InheritFloat (TYPE_3__*,int ) ;
 TYPE_8__* vlc_adjust_sigma_ranges ;
 int vlc_atomic_init_float (int *,float const) ;
 scalar_t__ vlc_vaapi_QueryVideoProcFilterCaps (int ,int ,int ,int ,TYPE_6__*,unsigned int*) ;

__attribute__((used)) static int
OpenAdjust_InitFilterParams(filter_t * filter, void * p_data,
                            void ** pp_va_params,
                            uint32_t * p_va_param_sz,
                            uint32_t * p_num_va_params)
{
    struct adjust_data *const p_adjust_data = p_data;
    struct adjust_params *const p_adjust_params = &p_adjust_data->params;
    filter_sys_t *const filter_sys = filter->p_sys;
    VAProcFilterCapColorBalance caps[VAProcColorBalanceCount];
    unsigned int num_caps = VAProcColorBalanceCount;

    if (vlc_vaapi_QueryVideoProcFilterCaps(VLC_OBJECT(filter),
                                           filter_sys->va.dpy,
                                           filter_sys->va.ctx,
                                           VAProcFilterColorBalance,
                                           caps, &num_caps))
        return VLC_EGENERIC;

    for (unsigned int i = 0; i < num_caps; ++i)
    {
        unsigned int j;

        for (j = 0; j < num_caps; ++j)
            if (caps[j].type == va_adjust_modes[i])
            {
                float vlc_sigma =
                    VLC_CLIP(var_InheritFloat(filter, adjust_params_names[i]),
                             vlc_adjust_sigma_ranges[i].min_value,
                             vlc_adjust_sigma_ranges[i].max_value);
                vlc_sigma =
                    adapt_adjust_sigma(adjust_params_names[i],
                                       vlc_sigma, vlc_adjust_sigma_ranges + i);

                p_adjust_params->sigma[i].drv_range = caps[j].range;
                p_adjust_params->sigma[i].is_available = 1;
                ++p_adjust_data->num_available_modes;

                float const drv_sigma =
                    GET_DRV_SIGMA(vlc_sigma, vlc_adjust_sigma_ranges[i],
                                  p_adjust_params->sigma[i].drv_range);

                vlc_atomic_init_float(&p_adjust_params->sigma[i].drv_value,
                                      drv_sigma);
                break;
            }
    }

    VAProcFilterParameterBufferColorBalance * p_va_params;

    *p_va_param_sz = sizeof(typeof(*p_va_params));
    *p_num_va_params = p_adjust_data->num_available_modes;

    p_va_params = calloc(*p_num_va_params, *p_va_param_sz);
    if (!p_va_params)
        return VLC_ENOMEM;

    unsigned int i = 0;
    for (unsigned int j = 0; j < NUM_ADJUST_MODES; ++j)
        if (p_adjust_params->sigma[j].is_available)
        {
            p_va_params[i].type = VAProcFilterColorBalance;
            p_va_params[i++].attrib = va_adjust_modes[j];
        }

    *pp_va_params = p_va_params;

    return VLC_SUCCESS;
}
