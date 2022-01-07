
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int jtransform_mtx_array; } ;
struct TYPE_14__ {TYPE_1__ stex; scalar_t__ p_anw_dl; int jobj; } ;
struct TYPE_13__ {int (* DeleteGlobalRef ) (TYPE_2__**,int ) ;} ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ AWindowHandler ;


 TYPE_2__** AWindowHandler_getEnv (TYPE_3__*) ;
 int AWindowHandler_releaseANativeWindowEnv (TYPE_3__*,TYPE_2__**,int ) ;
 int AWindow_Subtitles ;
 int AWindow_Video ;
 int CallVoidMethod ;
 int JNI_ANWCALL (int ,int ) ;
 int dlclose (scalar_t__) ;
 int free (TYPE_3__*) ;
 int stub1 (TYPE_2__**,int ) ;
 int stub2 (TYPE_2__**,int ) ;
 int unregisterNative ;

void
AWindowHandler_destroy(AWindowHandler *p_awh)
{
    JNIEnv *p_env = AWindowHandler_getEnv(p_awh);

    if (p_env)
    {
        JNI_ANWCALL(CallVoidMethod, unregisterNative);
        AWindowHandler_releaseANativeWindowEnv(p_awh, p_env, AWindow_Video);
        AWindowHandler_releaseANativeWindowEnv(p_awh, p_env, AWindow_Subtitles);
        (*p_env)->DeleteGlobalRef(p_env, p_awh->jobj);
    }

    if (p_awh->p_anw_dl)
        dlclose(p_awh->p_anw_dl);

    (*p_env)->DeleteGlobalRef(p_env, p_awh->stex.jtransform_mtx_array);
    free(p_awh);
}
