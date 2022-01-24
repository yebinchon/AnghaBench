#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  buffer_info; int /*<<< orphan*/  output_buffers; int /*<<< orphan*/  codec; int /*<<< orphan*/  input_buffers; } ;
typedef  TYPE_1__ mc_api_sys ;
struct TYPE_19__ {int b_started; int /*<<< orphan*/  p_obj; TYPE_1__* p_sys; } ;
typedef  TYPE_2__ mc_api ;
typedef  int /*<<< orphan*/ * jobject ;
struct TYPE_20__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_3__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* NewGlobalRef ) (TYPE_3__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* NewObject ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/ * (* CallObjectMethod ) (TYPE_3__**,int /*<<< orphan*/ ,scalar_t__) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_17__ {int /*<<< orphan*/  buffer_info_ctor; int /*<<< orphan*/  buffer_info_class; scalar_t__ get_output_buffers; scalar_t__ get_input_buffers; int /*<<< orphan*/  start; } ;
typedef  TYPE_3__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MC_API_ERROR ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_14__ jfields ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (TYPE_3__**,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (TYPE_3__**,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC12 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC16(mc_api *api)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv* env = NULL;
    jobject jinput_buffers = NULL;
    jobject joutput_buffers = NULL;
    jobject jbuffer_info = NULL;

    FUNC1();

    int i_ret = MC_API_ERROR;

    (*env)->CallVoidMethod(env, p_sys->codec, jfields.start);
    if (FUNC0())
    {
        FUNC5(api->p_obj, "Exception occurred in MediaCodec.start");
        goto error;
    }
    api->b_started = true;

    if (jfields.get_input_buffers && jfields.get_output_buffers)
    {
        jinput_buffers = (*env)->CallObjectMethod(env, p_sys->codec,
                                                  jfields.get_input_buffers);
        if (FUNC0())
        {
            FUNC4(api->p_obj, "Exception in MediaCodec.getInputBuffers");
            goto error;
        }
        p_sys->input_buffers = (*env)->NewGlobalRef(env, jinput_buffers);

        joutput_buffers = (*env)->CallObjectMethod(env, p_sys->codec,
                                                   jfields.get_output_buffers);
        if (FUNC0())
        {
            FUNC4(api->p_obj, "Exception in MediaCodec.getOutputBuffers");
            goto error;
        }
        p_sys->output_buffers = (*env)->NewGlobalRef(env, joutput_buffers);
    }
    jbuffer_info = (*env)->NewObject(env, jfields.buffer_info_class,
                                     jfields.buffer_info_ctor);
    p_sys->buffer_info = (*env)->NewGlobalRef(env, jbuffer_info);

    i_ret = 0;
    FUNC3(api->p_obj, "MediaCodec via JNI opened");

error:
    if (jinput_buffers)
        (*env)->DeleteLocalRef(env, jinput_buffers);
    if (joutput_buffers)
        (*env)->DeleteLocalRef(env, joutput_buffers);
    if (jbuffer_info)
        (*env)->DeleteLocalRef(env, jbuffer_info);

    if (i_ret != 0)
        FUNC2(api);
    return i_ret;
}