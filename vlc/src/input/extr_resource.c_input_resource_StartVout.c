
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {TYPE_1__* fmt; int vout; } ;
typedef TYPE_2__ vout_configuration_t ;
typedef int vlc_video_context ;
struct TYPE_13__ {int lock; int * p_input; } ;
typedef TYPE_3__ input_resource_t ;
struct TYPE_14__ {int viewpoint; } ;
typedef TYPE_4__ input_control_param_t ;
struct TYPE_11__ {int pose; } ;


 int DisplayVoutTitle (TYPE_3__*,int ) ;
 int INPUT_CONTROL_SET_INITIAL_VIEWPOINT ;
 int input_ControlPush (int *,int ,TYPE_4__*) ;
 int input_resource_PutVoutLocked (TYPE_3__*,int ) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;
 scalar_t__ vout_Request (TYPE_2__ const*,int *,int *) ;

int input_resource_StartVout(input_resource_t *p_resource,
                              vlc_video_context *vctx,
                              const vout_configuration_t *cfg)
{
    vlc_mutex_lock( &p_resource->lock );
    if (vout_Request(cfg, vctx, p_resource->p_input)) {
        input_resource_PutVoutLocked(p_resource, cfg->vout);
        vlc_mutex_unlock(&p_resource->lock);
        return -1;
    }

    DisplayVoutTitle(p_resource, cfg->vout);


    if (p_resource->p_input != ((void*)0))
    {
        input_control_param_t param = { .viewpoint = cfg->fmt->pose };
        input_ControlPush(p_resource->p_input, INPUT_CONTROL_SET_INITIAL_VIEWPOINT,
                          &param);
    }
    vlc_mutex_unlock( &p_resource->lock );
    return 0;
}
