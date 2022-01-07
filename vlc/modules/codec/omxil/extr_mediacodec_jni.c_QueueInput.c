
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;


typedef int vlc_tick_t ;
typedef int uint8_t ;
struct TYPE_14__ {int codec; int input_buffers; } ;
typedef TYPE_1__ mc_api_sys ;
struct TYPE_15__ {int p_obj; TYPE_1__* p_sys; } ;
typedef TYPE_2__ mc_api ;
typedef size_t jsize ;
typedef int jobject ;
typedef int jint ;
struct TYPE_16__ {size_t (* GetDirectBufferCapacity ) (TYPE_3__**,int ) ;int (* DeleteLocalRef ) (TYPE_3__**,int ) ;int (* CallVoidMethod ) (TYPE_3__**,int ,int ,int,int ,size_t,int ,int) ;int * (* GetDirectBufferAddress ) (TYPE_3__**,int ) ;int (* CallObjectMethod ) (TYPE_3__**,int ,int ,int) ;int (* GetObjectArrayElement ) (TYPE_3__**,int ,int) ;} ;
struct TYPE_13__ {int queue_input_buffer; int get_input_buffer; scalar_t__ get_input_buffers; } ;
typedef TYPE_3__* JNIEnv ;


 int BUFFER_FLAG_CODEC_CONFIG ;
 int BUFFER_FLAG_END_OF_STREAM ;
 scalar_t__ CHECK_EXCEPTION () ;
 int GET_ENV () ;
 int MC_API_ERROR ;
 int assert (int) ;
 TYPE_11__ jfields ;
 int memcpy (int *,void const*,size_t) ;
 int msg_Err (int ,char*) ;
 int stub1 (TYPE_3__**,int ,int) ;
 int stub2 (TYPE_3__**,int ,int ,int) ;
 size_t stub3 (TYPE_3__**,int ) ;
 int * stub4 (TYPE_3__**,int ) ;
 int stub5 (TYPE_3__**,int ) ;
 int stub6 (TYPE_3__**,int ,int ,int,int ,size_t,int ,int) ;
 int stub7 (TYPE_3__**,int ) ;

__attribute__((used)) static int QueueInput(mc_api *api, int i_index, const void *p_buf,
                      size_t i_size, vlc_tick_t i_ts, bool b_config)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv *env;
    uint8_t *p_mc_buf;
    jobject j_mc_buf;
    jsize j_mc_size;
    jint jflags = (b_config ? BUFFER_FLAG_CODEC_CONFIG : 0)
                | (p_buf == ((void*)0) ? BUFFER_FLAG_END_OF_STREAM : 0);

    assert(i_index >= 0);

    GET_ENV();

    if (jfields.get_input_buffers)
        j_mc_buf = (*env)->GetObjectArrayElement(env, p_sys->input_buffers,
                                                 i_index);
    else
    {
        j_mc_buf = (*env)->CallObjectMethod(env, p_sys->codec,
                                            jfields.get_input_buffer, i_index);
        if (CHECK_EXCEPTION())
        {
            msg_Err(api->p_obj, "Exception in MediaCodec.getInputBuffer");
            return MC_API_ERROR;
        }
    }
    j_mc_size = (*env)->GetDirectBufferCapacity(env, j_mc_buf);
    p_mc_buf = (*env)->GetDirectBufferAddress(env, j_mc_buf);
    if (j_mc_size < 0)
    {
        msg_Err(api->p_obj, "Java buffer has invalid size");
        (*env)->DeleteLocalRef(env, j_mc_buf);
        return MC_API_ERROR;
    }
    if ((size_t) j_mc_size > i_size)
        j_mc_size = i_size;
    memcpy(p_mc_buf, p_buf, j_mc_size);

    (*env)->CallVoidMethod(env, p_sys->codec, jfields.queue_input_buffer,
                           i_index, 0, j_mc_size, i_ts, jflags);
    (*env)->DeleteLocalRef(env, j_mc_buf);
    if (CHECK_EXCEPTION())
    {
        msg_Err(api->p_obj, "Exception in MediaCodec.queueInputBuffer");
        return MC_API_ERROR;
    }

    return 0;
}
