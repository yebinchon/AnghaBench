
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_14__ ;


struct TYPE_18__ {int buffer_info; int output_buffers; int codec; int input_buffers; } ;
typedef TYPE_1__ mc_api_sys ;
struct TYPE_19__ {int b_started; int p_obj; TYPE_1__* p_sys; } ;
typedef TYPE_2__ mc_api ;
typedef int * jobject ;
struct TYPE_20__ {int (* DeleteLocalRef ) (TYPE_3__**,int *) ;int (* NewGlobalRef ) (TYPE_3__**,int *) ;int * (* NewObject ) (TYPE_3__**,int ,int ) ;int * (* CallObjectMethod ) (TYPE_3__**,int ,scalar_t__) ;int (* CallVoidMethod ) (TYPE_3__**,int ,int ) ;} ;
struct TYPE_17__ {int buffer_info_ctor; int buffer_info_class; scalar_t__ get_output_buffers; scalar_t__ get_input_buffers; int start; } ;
typedef TYPE_3__* JNIEnv ;


 scalar_t__ CHECK_EXCEPTION () ;
 int GET_ENV () ;
 int MC_API_ERROR ;
 int Stop (TYPE_2__*) ;
 TYPE_14__ jfields ;
 int msg_Dbg (int ,char*) ;
 int msg_Err (int ,char*) ;
 int msg_Warn (int ,char*) ;
 int stub1 (TYPE_3__**,int ,int ) ;
 int stub10 (TYPE_3__**,int *) ;
 int * stub2 (TYPE_3__**,int ,scalar_t__) ;
 int stub3 (TYPE_3__**,int *) ;
 int * stub4 (TYPE_3__**,int ,scalar_t__) ;
 int stub5 (TYPE_3__**,int *) ;
 int * stub6 (TYPE_3__**,int ,int ) ;
 int stub7 (TYPE_3__**,int *) ;
 int stub8 (TYPE_3__**,int *) ;
 int stub9 (TYPE_3__**,int *) ;

__attribute__((used)) static int Start(mc_api *api)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv* env = ((void*)0);
    jobject jinput_buffers = ((void*)0);
    jobject joutput_buffers = ((void*)0);
    jobject jbuffer_info = ((void*)0);

    GET_ENV();

    int i_ret = MC_API_ERROR;

    (*env)->CallVoidMethod(env, p_sys->codec, jfields.start);
    if (CHECK_EXCEPTION())
    {
        msg_Warn(api->p_obj, "Exception occurred in MediaCodec.start");
        goto error;
    }
    api->b_started = 1;

    if (jfields.get_input_buffers && jfields.get_output_buffers)
    {
        jinput_buffers = (*env)->CallObjectMethod(env, p_sys->codec,
                                                  jfields.get_input_buffers);
        if (CHECK_EXCEPTION())
        {
            msg_Err(api->p_obj, "Exception in MediaCodec.getInputBuffers");
            goto error;
        }
        p_sys->input_buffers = (*env)->NewGlobalRef(env, jinput_buffers);

        joutput_buffers = (*env)->CallObjectMethod(env, p_sys->codec,
                                                   jfields.get_output_buffers);
        if (CHECK_EXCEPTION())
        {
            msg_Err(api->p_obj, "Exception in MediaCodec.getOutputBuffers");
            goto error;
        }
        p_sys->output_buffers = (*env)->NewGlobalRef(env, joutput_buffers);
    }
    jbuffer_info = (*env)->NewObject(env, jfields.buffer_info_class,
                                     jfields.buffer_info_ctor);
    p_sys->buffer_info = (*env)->NewGlobalRef(env, jbuffer_info);

    i_ret = 0;
    msg_Dbg(api->p_obj, "MediaCodec via JNI opened");

error:
    if (jinput_buffers)
        (*env)->DeleteLocalRef(env, jinput_buffers);
    if (joutput_buffers)
        (*env)->DeleteLocalRef(env, joutput_buffers);
    if (jbuffer_info)
        (*env)->DeleteLocalRef(env, jbuffer_info);

    if (i_ret != 0)
        Stop(api);
    return i_ret;
}
