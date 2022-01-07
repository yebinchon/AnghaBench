
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int * jtransform_mtx; int jtransform_mtx_array; } ;
struct TYPE_11__ {TYPE_1__ stex; int p_jvm; } ;
struct TYPE_10__ {int (* ReleaseFloatArrayElements ) (TYPE_2__**,int ,int *,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ AWindowHandler ;


 int AWindowHandler_releaseANativeWindowEnv (TYPE_3__*,TYPE_2__**,int ) ;
 int AWindow_SurfaceTexture ;
 int CallVoidMethod ;
 int JNI_ABORT ;
 int JNI_STEXCALL (int ,int ) ;
 TYPE_2__** android_getEnvCommon (int *,int ,char*) ;
 int detachFromGLContext ;
 int stub1 (TYPE_2__**,int ,int *,int ) ;

void
SurfaceTexture_detachFromGLContext(AWindowHandler *p_awh)
{
    JNIEnv *p_env = android_getEnvCommon(((void*)0), p_awh->p_jvm, "SurfaceTexture");
    if (!p_env)
        return;

    JNI_STEXCALL(CallVoidMethod, detachFromGLContext);

    AWindowHandler_releaseANativeWindowEnv(p_awh, p_env, AWindow_SurfaceTexture);

    if (p_awh->stex.jtransform_mtx != ((void*)0))
    {
        (*p_env)->ReleaseFloatArrayElements(p_env, p_awh->stex.jtransform_mtx_array,
                                            p_awh->stex.jtransform_mtx,
                                            JNI_ABORT);
        p_awh->stex.jtransform_mtx = ((void*)0);
    }
}
