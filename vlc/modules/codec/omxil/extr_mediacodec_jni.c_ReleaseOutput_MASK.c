#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  codec; } ;
typedef  TYPE_1__ mc_api_sys ;
struct TYPE_8__ {int /*<<< orphan*/  p_obj; TYPE_1__* p_sys; } ;
typedef  TYPE_2__ mc_api ;
struct TYPE_10__ {int /*<<< orphan*/  release_output_buffer; } ;
struct TYPE_9__ {int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ;} ;
typedef  TYPE_3__* JNIEnv ;

/* Variables and functions */
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int MC_API_ERROR ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_5__ jfields ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC5(mc_api *api, int i_index, bool b_render)
{
    mc_api_sys *p_sys = api->p_sys;
    JNIEnv *env;

    FUNC2(i_index >= 0);

    FUNC1();

    (*env)->CallVoidMethod(env, p_sys->codec, jfields.release_output_buffer,
                           i_index, b_render);
    if (FUNC0())
    {
        FUNC3(api->p_obj, "Exception in MediaCodec.releaseOutputBuffer");
        return MC_API_ERROR;
    }
    return 0;
}