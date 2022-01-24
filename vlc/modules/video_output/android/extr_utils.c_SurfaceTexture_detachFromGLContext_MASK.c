#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/ * jtransform_mtx; int /*<<< orphan*/  jtransform_mtx_array; } ;
struct TYPE_11__ {TYPE_1__ stex; int /*<<< orphan*/  p_jvm; } ;
struct TYPE_10__ {int /*<<< orphan*/  (* ReleaseFloatArrayElements ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ AWindowHandler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AWindow_SurfaceTexture ; 
 int /*<<< orphan*/  CallVoidMethod ; 
 int /*<<< orphan*/  JNI_ABORT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__** FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  detachFromGLContext ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void
FUNC4(AWindowHandler *p_awh)
{
    JNIEnv *p_env = FUNC2(NULL, p_awh->p_jvm, "SurfaceTexture");
    if (!p_env)
        return;

    FUNC1(CallVoidMethod, detachFromGLContext);

    FUNC0(p_awh, p_env, AWindow_SurfaceTexture);

    if (p_awh->stex.jtransform_mtx != NULL)
    {
        (*p_env)->ReleaseFloatArrayElements(p_env, p_awh->stex.jtransform_mtx_array,
                                            p_awh->stex.jtransform_mtx,
                                            JNI_ABORT);
        p_awh->stex.jtransform_mtx = NULL;
    }
}