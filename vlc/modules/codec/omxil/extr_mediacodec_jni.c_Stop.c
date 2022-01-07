
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int * buffer_info; int * codec; int * output_buffers; int * input_buffers; } ;
typedef TYPE_1__ mc_api_sys ;
struct TYPE_14__ {int b_direct_rendering; int b_started; int p_obj; TYPE_1__* p_sys; } ;
typedef TYPE_2__ mc_api ;
struct TYPE_15__ {int (* DeleteGlobalRef ) (TYPE_3__**,int *) ;int (* CallVoidMethod ) (TYPE_3__**,int *,int ) ;} ;
struct TYPE_12__ {int release; int stop; } ;
typedef TYPE_3__* JNIEnv ;


 scalar_t__ CHECK_EXCEPTION () ;
 int GET_ENV () ;
 TYPE_10__ jfields ;
 int msg_Dbg (int ,char*) ;
 int msg_Err (int ,char*) ;
 int stub1 (TYPE_3__**,int *) ;
 int stub2 (TYPE_3__**,int *) ;
 int stub3 (TYPE_3__**,int *,int ) ;
 int stub4 (TYPE_3__**,int *,int ) ;
 int stub5 (TYPE_3__**,int *) ;
 int stub6 (TYPE_3__**,int *) ;

__attribute__((used)) static int Stop(mc_api *api)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv *env;

    api->b_direct_rendering = 0;

    GET_ENV();

    if (p_sys->input_buffers)
    {
        (*env)->DeleteGlobalRef(env, p_sys->input_buffers);
        p_sys->input_buffers = ((void*)0);
    }
    if (p_sys->output_buffers)
    {
        (*env)->DeleteGlobalRef(env, p_sys->output_buffers);
        p_sys->output_buffers = ((void*)0);
    }
    if (p_sys->codec)
    {
        if (api->b_started)
        {
            (*env)->CallVoidMethod(env, p_sys->codec, jfields.stop);
            if (CHECK_EXCEPTION())
                msg_Err(api->p_obj, "Exception in MediaCodec.stop");
            api->b_started = 0;
        }

        (*env)->CallVoidMethod(env, p_sys->codec, jfields.release);
        if (CHECK_EXCEPTION())
            msg_Err(api->p_obj, "Exception in MediaCodec.release");
        (*env)->DeleteGlobalRef(env, p_sys->codec);
        p_sys->codec = ((void*)0);
    }
    if (p_sys->buffer_info)
    {
        (*env)->DeleteGlobalRef(env, p_sys->buffer_info);
        p_sys->buffer_info = ((void*)0);
    }
    msg_Dbg(api->p_obj, "MediaCodec via JNI closed");
    return 0;
}
