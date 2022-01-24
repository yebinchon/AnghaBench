#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vlc_tick_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_14__ {int /*<<< orphan*/  codec; int /*<<< orphan*/  input_buffers; } ;
typedef  TYPE_1__ mc_api_sys ;
struct TYPE_15__ {int /*<<< orphan*/  p_obj; TYPE_1__* p_sys; } ;
typedef  TYPE_2__ mc_api ;
typedef  size_t jsize ;
typedef  int /*<<< orphan*/  jobject ;
typedef  int jint ;
struct TYPE_16__ {size_t (* GetDirectBufferCapacity ) (TYPE_3__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_3__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/ * (* GetDirectBufferAddress ) (TYPE_3__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* CallObjectMethod ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;int /*<<< orphan*/  (* GetObjectArrayElement ) (TYPE_3__**,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_13__ {int /*<<< orphan*/  queue_input_buffer; int /*<<< orphan*/  get_input_buffer; scalar_t__ get_input_buffers; } ;
typedef  TYPE_3__* JNIEnv ;

/* Variables and functions */
 int BUFFER_FLAG_CODEC_CONFIG ; 
 int BUFFER_FLAG_END_OF_STREAM ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MC_API_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_11__ jfields ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 size_t FUNC7 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,size_t,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(mc_api *api, int i_index, const void *p_buf,
                      size_t i_size, vlc_tick_t i_ts, bool b_config)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv *env;
    uint8_t *p_mc_buf;
    jobject j_mc_buf;
    jsize j_mc_size;
    jint jflags = (b_config ? BUFFER_FLAG_CODEC_CONFIG : 0)
                | (p_buf == NULL ? BUFFER_FLAG_END_OF_STREAM : 0);

    FUNC2(i_index >= 0);

    FUNC1();

    if (jfields.get_input_buffers)
        j_mc_buf = (*env)->GetObjectArrayElement(env, p_sys->input_buffers,
                                                 i_index);
    else
    {
        j_mc_buf = (*env)->CallObjectMethod(env, p_sys->codec,
                                            jfields.get_input_buffer, i_index);
        if (FUNC0())
        {
            FUNC4(api->p_obj, "Exception in MediaCodec.getInputBuffer");
            return MC_API_ERROR;
        }
    }
    j_mc_size = (*env)->GetDirectBufferCapacity(env, j_mc_buf);
    p_mc_buf = (*env)->GetDirectBufferAddress(env, j_mc_buf);
    if (j_mc_size < 0)
    {
        FUNC4(api->p_obj, "Java buffer has invalid size");
        (*env)->DeleteLocalRef(env, j_mc_buf);
        return MC_API_ERROR;
    }
    if ((size_t) j_mc_size > i_size)
        j_mc_size = i_size;
    FUNC3(p_mc_buf, p_buf, j_mc_size);

    (*env)->CallVoidMethod(env, p_sys->codec, jfields.queue_input_buffer,
                           i_index, 0, j_mc_size, i_ts, jflags);
    (*env)->DeleteLocalRef(env, j_mc_buf);
    if (FUNC0())
    {
        FUNC4(api->p_obj, "Exception in MediaCodec.queueInputBuffer");
        return MC_API_ERROR;
    }

    return 0;
}