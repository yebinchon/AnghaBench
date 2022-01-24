#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_4__ ;
typedef  struct TYPE_21__   TYPE_3__ ;
typedef  struct TYPE_20__   TYPE_2__ ;
typedef  struct TYPE_19__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vout_window_t ;
typedef  void* jobject ;
typedef  int /*<<< orphan*/  jlong ;
typedef  int jint ;
typedef  void* jfloatArray ;
typedef  int /*<<< orphan*/  awh_events_t ;
struct TYPE_20__ {int /*<<< orphan*/  jtransform_mtx_array; int /*<<< orphan*/ * jtransform_mtx; } ;
struct TYPE_19__ {int /*<<< orphan*/  cb; } ;
struct TYPE_22__ {int b_has_video_layout_listener; TYPE_2__ stex; int /*<<< orphan*/  jobj; TYPE_1__ event; int /*<<< orphan*/ * wnd; int /*<<< orphan*/ * p_jvm; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* DeleteGlobalRef ) (TYPE_3__**,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_3__**,void*) ;int /*<<< orphan*/  (* NewGlobalRef ) (TYPE_3__**,void*) ;int /*<<< orphan*/  (* ExceptionClear ) (TYPE_3__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_3__**) ;void* (* NewFloatArray ) (TYPE_3__**,int) ;} ;
typedef  int /*<<< orphan*/  JavaVM ;
typedef  TYPE_3__* JNIEnv ;
typedef  TYPE_4__ AWindowHandler ;

/* Variables and functions */
 int const AWINDOW_REGISTER_FLAGS_HAS_VIDEO_LAYOUT_LISTENER ; 
 int const AWINDOW_REGISTER_FLAGS_SUCCESS ; 
 int /*<<< orphan*/  CallIntMethod ; 
 scalar_t__ FUNC0 (TYPE_3__**,int /*<<< orphan*/ ,void*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ VLC_SUCCESS ; 
 TYPE_3__** FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_4__* FUNC5 (int,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  registerNative ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__**,void*) ; 
 void* FUNC10 (TYPE_3__**,int) ; 
 scalar_t__ FUNC11 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__**,void*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__**,void*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__**,int /*<<< orphan*/ ) ; 
 void* FUNC17 (int /*<<< orphan*/ *,char*) ; 

AWindowHandler *
FUNC18(vout_window_t *wnd, awh_events_t *p_events)
{
#define AWINDOW_REGISTER_FLAGS_SUCCESS 0x1
#define AWINDOW_REGISTER_FLAGS_HAS_VIDEO_LAYOUT_LISTENER 0x2

    AWindowHandler *p_awh;
    JNIEnv *p_env;
    JavaVM *p_jvm = FUNC17(wnd, "android-jvm");
    jobject jobj = FUNC17(wnd, "drawable-androidwindow");

    if (!p_jvm || !jobj)
    {
        FUNC8(wnd, "libvlc_media_player options not set");
        return NULL;
    }

    p_env = FUNC4(NULL, p_jvm, "AWindowHandler");
    if (!p_env)
    {
        FUNC8(wnd, "can't get JNIEnv");
        return NULL;
    }

    if (FUNC0(p_env, FUNC3(wnd), jobj) != VLC_SUCCESS)
    {
        FUNC8(wnd, "InitJNIFields failed");
        return NULL;
    }
    FUNC7(wnd, "InitJNIFields success");

    p_awh = FUNC5(1, sizeof(AWindowHandler));
    if (!p_awh)
        return NULL;

    p_awh->p_jvm = p_jvm;
    p_awh->jobj = (*p_env)->NewGlobalRef(p_env, jobj);

    p_awh->wnd = wnd;
    p_awh->event.cb = *p_events;

    jfloatArray jarray = (*p_env)->NewFloatArray(p_env, 16);
    if ((*p_env)->ExceptionCheck(p_env))
    {
        (*p_env)->ExceptionClear(p_env);
        FUNC6(p_awh);
        return NULL;
    }
    p_awh->stex.jtransform_mtx_array = (*p_env)->NewGlobalRef(p_env, jarray);
    (*p_env)->DeleteLocalRef(p_env, jarray);
    p_awh->stex.jtransform_mtx = NULL;

    const jint flags = FUNC1(CallIntMethod, registerNative,
                                   (jlong)(intptr_t)p_awh);
    if ((flags & AWINDOW_REGISTER_FLAGS_SUCCESS) == 0)
    {
        FUNC8(wnd, "AWindow already registered");
        (*p_env)->DeleteGlobalRef(p_env, p_awh->jobj);
        (*p_env)->DeleteGlobalRef(p_env, p_awh->stex.jtransform_mtx_array);
        FUNC6(p_awh);
        return NULL;
    }
    FUNC2(p_awh);

    p_awh->b_has_video_layout_listener =
        flags & AWINDOW_REGISTER_FLAGS_HAS_VIDEO_LAYOUT_LISTENER;

    return p_awh;
}