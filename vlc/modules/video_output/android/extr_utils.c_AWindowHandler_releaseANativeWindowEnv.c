
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef enum AWindow_ID { ____Placeholder_AWindow_ID } AWindow_ID ;
struct TYPE_9__ {TYPE_1__* views; int (* pf_winRelease ) (int *) ;} ;
struct TYPE_8__ {int (* DeleteGlobalRef ) (TYPE_2__**,int *) ;} ;
struct TYPE_7__ {int * jsurface; int * p_anw; } ;
typedef TYPE_2__* JNIEnv ;
typedef TYPE_3__ AWindowHandler ;


 int AWindow_Max ;
 int assert (int) ;
 int stub1 (int *) ;
 int stub2 (TYPE_2__**,int *) ;

__attribute__((used)) static void
AWindowHandler_releaseANativeWindowEnv(AWindowHandler *p_awh, JNIEnv *p_env,
                                       enum AWindow_ID id)
{
    assert(id < AWindow_Max);

    if (p_awh->views[id].p_anw)
    {
        p_awh->pf_winRelease(p_awh->views[id].p_anw);
        p_awh->views[id].p_anw = ((void*)0);
    }

    if (p_awh->views[id].jsurface)
    {
        (*p_env)->DeleteGlobalRef(p_env, p_awh->views[id].jsurface);
        p_awh->views[id].jsurface = ((void*)0);
    }
}
