
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int p_jvm; } ;
typedef int JNIEnv ;
typedef TYPE_1__ AWindowHandler ;


 int CallBooleanMethod ;
 scalar_t__ JNI_STEXCALL (int ,int ,int) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int * android_getEnvCommon (int *,int ,char*) ;
 int attachToGLContext ;

int
SurfaceTexture_attachToGLContext(AWindowHandler *p_awh, int tex_name)
{
    JNIEnv *p_env = android_getEnvCommon(((void*)0), p_awh->p_jvm, "SurfaceTexture");
    if (!p_env)
        return VLC_EGENERIC;

    return JNI_STEXCALL(CallBooleanMethod, attachToGLContext, tex_name) ?
           VLC_SUCCESS : VLC_EGENERIC;
}
