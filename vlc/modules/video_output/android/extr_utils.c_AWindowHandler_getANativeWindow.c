
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AWindow_ID { ____Placeholder_AWindow_ID } AWindow_ID ;
struct TYPE_7__ {TYPE_1__* views; int * (* pf_winFromSurface ) (int *,int *) ;} ;
struct TYPE_6__ {int * p_anw; int * jsurface; } ;
typedef int JNIEnv ;
typedef TYPE_2__ AWindowHandler ;
typedef int ANativeWindow ;


 int * AWindowHandler_getEnv (TYPE_2__*) ;
 int AWindow_Max ;
 scalar_t__ VLC_SUCCESS ;
 scalar_t__ WindowHandler_NewSurfaceEnv (TYPE_2__*,int *,int) ;
 int assert (int) ;
 int * stub1 (int *,int *) ;

ANativeWindow *
AWindowHandler_getANativeWindow(AWindowHandler *p_awh, enum AWindow_ID id)
{
    assert(id < AWindow_Max);

    JNIEnv *p_env;

    if (p_awh->views[id].p_anw)
        return p_awh->views[id].p_anw;

    p_env = AWindowHandler_getEnv(p_awh);
    if (!p_env)
        return ((void*)0);

    if (WindowHandler_NewSurfaceEnv(p_awh, p_env, id) != VLC_SUCCESS)
        return ((void*)0);
    assert(p_awh->views[id].jsurface != ((void*)0));

    p_awh->views[id].p_anw = p_awh->pf_winFromSurface(p_env,
                                                      p_awh->views[id].jsurface);
    return p_awh->views[id].p_anw;
}
