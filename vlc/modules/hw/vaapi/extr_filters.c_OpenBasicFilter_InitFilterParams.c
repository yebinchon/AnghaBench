
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int uint32_t ;
struct TYPE_15__ {int drv_value; int drv_range; TYPE_12__* p_vlc_range; int psz_name; } ;
struct basic_filter_data {int filter_type; TYPE_2__ sigma; } ;
struct TYPE_16__ {TYPE_4__* p_sys; } ;
typedef TYPE_3__ filter_t ;
struct TYPE_14__ {int buf; int dpy; } ;
struct TYPE_17__ {TYPE_1__ va; } ;
typedef TYPE_4__ filter_sys_t ;
struct TYPE_18__ {int type; } ;
typedef TYPE_5__ VAProcFilterParameterBuffer ;
struct TYPE_19__ {int range; } ;
typedef TYPE_6__ VAProcFilterCap ;
struct TYPE_13__ {int max_value; int min_value; } ;


 float GET_DRV_SIGMA (float const,TYPE_12__,int ) ;
 float VLC_CLIP (int ,int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_ENOMEM ;
 int VLC_OBJECT (TYPE_3__*) ;
 int VLC_SUCCESS ;
 TYPE_5__* calloc (int,int) ;
 int var_InheritFloat (TYPE_3__*,int ) ;
 int vlc_atomic_init_float (int *,float const) ;
 scalar_t__ vlc_vaapi_QueryVideoProcFilterCaps (int ,int ,int ,int ,TYPE_6__*,unsigned int*) ;

__attribute__((used)) static int
OpenBasicFilter_InitFilterParams(filter_t * filter, void * p_data,
                                 void ** pp_va_params,
                                 uint32_t * p_va_param_sz,
                                 uint32_t * p_num_va_params)
{
    struct basic_filter_data *const p_basic_filter_data = p_data;
    filter_sys_t *const filter_sys = filter->p_sys;
    VAProcFilterCap caps;
    unsigned int num_caps = 1;

    if (vlc_vaapi_QueryVideoProcFilterCaps(VLC_OBJECT(filter),
                                           filter_sys->va.dpy,
                                           filter_sys->va.buf,
                                           p_basic_filter_data->filter_type,
                                           &caps, &num_caps)
        || !num_caps)
        return VLC_EGENERIC;

    float const vlc_sigma =
        VLC_CLIP(var_InheritFloat(filter, p_basic_filter_data->sigma.psz_name),
                 p_basic_filter_data->sigma.p_vlc_range->min_value,
                 p_basic_filter_data->sigma.p_vlc_range->max_value);

    p_basic_filter_data->sigma.drv_range = caps.range;

    float const drv_sigma =
        GET_DRV_SIGMA(vlc_sigma, *p_basic_filter_data->sigma.p_vlc_range,
                      p_basic_filter_data->sigma.drv_range);

    vlc_atomic_init_float(&p_basic_filter_data->sigma.drv_value, drv_sigma);

    VAProcFilterParameterBuffer * p_va_param;

    *p_va_param_sz = sizeof(*p_va_param);
    *p_num_va_params = 1;

    p_va_param = calloc(1, sizeof(*p_va_param));
    if (!p_va_param)
        return VLC_ENOMEM;

    p_va_param->type = p_basic_filter_data->filter_type;
    *pp_va_params = p_va_param;

    return VLC_SUCCESS;
}
