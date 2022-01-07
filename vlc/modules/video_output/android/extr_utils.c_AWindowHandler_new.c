
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int vout_window_t ;
typedef void* jobject ;
typedef int jlong ;
typedef int jint ;
typedef void* jfloatArray ;
typedef int awh_events_t ;
struct TYPE_20__ {int jtransform_mtx_array; int * jtransform_mtx; } ;
struct TYPE_19__ {int cb; } ;
struct TYPE_22__ {int b_has_video_layout_listener; TYPE_2__ stex; int jobj; TYPE_1__ event; int * wnd; int * p_jvm; } ;
struct TYPE_21__ {int (* DeleteGlobalRef ) (TYPE_3__**,int ) ;int (* DeleteLocalRef ) (TYPE_3__**,void*) ;int (* NewGlobalRef ) (TYPE_3__**,void*) ;int (* ExceptionClear ) (TYPE_3__**) ;scalar_t__ (* ExceptionCheck ) (TYPE_3__**) ;void* (* NewFloatArray ) (TYPE_3__**,int) ;} ;
typedef int JavaVM ;
typedef TYPE_3__* JNIEnv ;
typedef TYPE_4__ AWindowHandler ;


 int const AWINDOW_REGISTER_FLAGS_HAS_VIDEO_LAYOUT_LISTENER ;
 int const AWINDOW_REGISTER_FLAGS_SUCCESS ;
 int CallIntMethod ;
 scalar_t__ InitJNIFields (TYPE_3__**,int ,void*) ;
 int JNI_ANWCALL (int ,int ,int ) ;
 int LoadNativeWindowAPI (TYPE_4__*) ;
 int VLC_OBJECT (int *) ;
 scalar_t__ VLC_SUCCESS ;
 TYPE_3__** android_getEnvCommon (int *,int *,char*) ;
 TYPE_4__* calloc (int,int) ;
 int free (TYPE_4__*) ;
 int msg_Dbg (int *,char*) ;
 int msg_Err (int *,char*) ;
 int registerNative ;
 int stub1 (TYPE_3__**,void*) ;
 void* stub2 (TYPE_3__**,int) ;
 scalar_t__ stub3 (TYPE_3__**) ;
 int stub4 (TYPE_3__**) ;
 int stub5 (TYPE_3__**,void*) ;
 int stub6 (TYPE_3__**,void*) ;
 int stub7 (TYPE_3__**,int ) ;
 int stub8 (TYPE_3__**,int ) ;
 void* var_InheritAddress (int *,char*) ;

AWindowHandler *
AWindowHandler_new(vout_window_t *wnd, awh_events_t *p_events)
{



    AWindowHandler *p_awh;
    JNIEnv *p_env;
    JavaVM *p_jvm = var_InheritAddress(wnd, "android-jvm");
    jobject jobj = var_InheritAddress(wnd, "drawable-androidwindow");

    if (!p_jvm || !jobj)
    {
        msg_Err(wnd, "libvlc_media_player options not set");
        return ((void*)0);
    }

    p_env = android_getEnvCommon(((void*)0), p_jvm, "AWindowHandler");
    if (!p_env)
    {
        msg_Err(wnd, "can't get JNIEnv");
        return ((void*)0);
    }

    if (InitJNIFields(p_env, VLC_OBJECT(wnd), jobj) != VLC_SUCCESS)
    {
        msg_Err(wnd, "InitJNIFields failed");
        return ((void*)0);
    }
    msg_Dbg(wnd, "InitJNIFields success");

    p_awh = calloc(1, sizeof(AWindowHandler));
    if (!p_awh)
        return ((void*)0);

    p_awh->p_jvm = p_jvm;
    p_awh->jobj = (*p_env)->NewGlobalRef(p_env, jobj);

    p_awh->wnd = wnd;
    p_awh->event.cb = *p_events;

    jfloatArray jarray = (*p_env)->NewFloatArray(p_env, 16);
    if ((*p_env)->ExceptionCheck(p_env))
    {
        (*p_env)->ExceptionClear(p_env);
        free(p_awh);
        return ((void*)0);
    }
    p_awh->stex.jtransform_mtx_array = (*p_env)->NewGlobalRef(p_env, jarray);
    (*p_env)->DeleteLocalRef(p_env, jarray);
    p_awh->stex.jtransform_mtx = ((void*)0);

    const jint flags = JNI_ANWCALL(CallIntMethod, registerNative,
                                   (jlong)(intptr_t)p_awh);
    if ((flags & 0x1) == 0)
    {
        msg_Err(wnd, "AWindow already registered");
        (*p_env)->DeleteGlobalRef(p_env, p_awh->jobj);
        (*p_env)->DeleteGlobalRef(p_env, p_awh->stex.jtransform_mtx_array);
        free(p_awh);
        return ((void*)0);
    }
    LoadNativeWindowAPI(p_awh);

    p_awh->b_has_video_layout_listener =
        flags & 0x2;

    return p_awh;
}
