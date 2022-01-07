
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {float* jtransform_mtx; int jtransform_mtx_array; } ;
struct TYPE_10__ {TYPE_1__ stex; int p_jvm; } ;
struct TYPE_9__ {float* (* GetFloatArrayElements ) (TYPE_2__**,int ,int *) ;int (* ReleaseFloatArrayElements ) (TYPE_2__**,int ,float*,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ AWindowHandler ;


 int CallBooleanMethod ;
 int JNI_ABORT ;
 int JNI_STEXCALL (int ,int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 TYPE_2__** android_getEnvCommon (int *,int ,char*) ;
 int stub1 (TYPE_2__**,int ,float*,int ) ;
 float* stub2 (TYPE_2__**,int ,int *) ;
 int waitAndUpdateTexImage ;

int
SurfaceTexture_waitAndUpdateTexImage(AWindowHandler *p_awh,
                                     const float **pp_transform_mtx)
{
    JNIEnv *p_env = android_getEnvCommon(((void*)0), p_awh->p_jvm, "SurfaceTexture");
    if (!p_env)
        return VLC_EGENERIC;

    if (p_awh->stex.jtransform_mtx != ((void*)0))
        (*p_env)->ReleaseFloatArrayElements(p_env, p_awh->stex.jtransform_mtx_array,
                                            p_awh->stex.jtransform_mtx,
                                            JNI_ABORT);

    bool ret = JNI_STEXCALL(CallBooleanMethod, waitAndUpdateTexImage,
                            p_awh->stex.jtransform_mtx_array);
    if (ret)
    {
        p_awh->stex.jtransform_mtx = (*p_env)->GetFloatArrayElements(p_env,
                                            p_awh->stex.jtransform_mtx_array, ((void*)0));
        *pp_transform_mtx = p_awh->stex.jtransform_mtx;
        return VLC_SUCCESS;
    }
    else
    {
        p_awh->stex.jtransform_mtx = ((void*)0);
        return VLC_EGENERIC;
    }
}
