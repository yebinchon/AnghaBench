#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/ * buffer_info; int /*<<< orphan*/ * codec; int /*<<< orphan*/ * output_buffers; int /*<<< orphan*/ * input_buffers; } ;
typedef  TYPE_1__ mc_api_sys ;
struct TYPE_14__ {int b_direct_rendering; int b_started; int /*<<< orphan*/  p_obj; TYPE_1__* p_sys; } ;
typedef  TYPE_2__ mc_api ;
struct TYPE_15__ {int /*<<< orphan*/  (* DeleteGlobalRef ) (TYPE_3__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
struct TYPE_12__ {int /*<<< orphan*/  release; int /*<<< orphan*/  stop; } ;
typedef  TYPE_3__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_10__ jfields ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__**,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(mc_api *api)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv *env;

    api->b_direct_rendering = false;

    FUNC1();

    if (p_sys->input_buffers)
    {
        (*env)->DeleteGlobalRef(env, p_sys->input_buffers);
        p_sys->input_buffers = NULL;
    }
    if (p_sys->output_buffers)
    {
        (*env)->DeleteGlobalRef(env, p_sys->output_buffers);
        p_sys->output_buffers = NULL;
    }
    if (p_sys->codec)
    {
        if (api->b_started)
        {
            (*env)->CallVoidMethod(env, p_sys->codec, jfields.stop);
            if (FUNC0())
                FUNC3(api->p_obj, "Exception in MediaCodec.stop");
            api->b_started = false;
        }

        (*env)->CallVoidMethod(env, p_sys->codec, jfields.release);
        if (FUNC0())
            FUNC3(api->p_obj, "Exception in MediaCodec.release");
        (*env)->DeleteGlobalRef(env, p_sys->codec);
        p_sys->codec = NULL;
    }
    if (p_sys->buffer_info)
    {
        (*env)->DeleteGlobalRef(env, p_sys->buffer_info);
        p_sys->buffer_info = NULL;
    }
    FUNC2(api->p_obj, "MediaCodec via JNI closed");
    return 0;
}