
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jobject ;
typedef enum AWindow_ID { ____Placeholder_AWindow_ID } AWindow_ID ;
struct TYPE_10__ {TYPE_1__* views; } ;
struct TYPE_9__ {int (* DeleteLocalRef ) (TYPE_2__**,int ) ;int (* NewGlobalRef ) (TYPE_2__**,int ) ;} ;
struct TYPE_8__ {int jsurface; } ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ AWindowHandler ;





 int CallObjectMethod ;
 int JNI_ANWCALL (int ,int ) ;
 int JNI_STEXCALL (int ,int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int getSubtitlesSurface ;
 int getSurface ;
 int getVideoSurface ;
 int stub1 (TYPE_2__**,int ) ;
 int stub2 (TYPE_2__**,int ) ;

__attribute__((used)) static int
WindowHandler_NewSurfaceEnv(AWindowHandler *p_awh, JNIEnv *p_env,
                            enum AWindow_ID id)
{
    jobject jsurface;

    switch (id)
    {
        case 128:
            jsurface = JNI_ANWCALL(CallObjectMethod, getVideoSurface);
            break;
        case 130:
            jsurface = JNI_ANWCALL(CallObjectMethod, getSubtitlesSurface);
            break;
        case 129:
            jsurface = JNI_STEXCALL(CallObjectMethod, getSurface);
            break;
    }
    if (!jsurface)
        return VLC_EGENERIC;

    p_awh->views[id].jsurface = (*p_env)->NewGlobalRef(p_env, jsurface);
    (*p_env)->DeleteLocalRef(p_env, jsurface);
    return VLC_SUCCESS;
}
