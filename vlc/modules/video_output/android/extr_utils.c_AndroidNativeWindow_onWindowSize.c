
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int jobject ;
typedef int jlong ;
typedef int jint ;
struct TYPE_5__ {int (* on_new_window_size ) (int ,int ,int ) ;} ;
struct TYPE_6__ {TYPE_1__ cb; } ;
struct TYPE_7__ {int wnd; TYPE_2__ event; } ;
typedef int JNIEnv ;
typedef TYPE_3__ AWindowHandler ;


 TYPE_3__* jlong_AWindowHandler (int ) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void
AndroidNativeWindow_onWindowSize(JNIEnv* env, jobject clazz, jlong handle,
                                 jint width, jint height)
{
    (void) env; (void) clazz;
    AWindowHandler *p_awh = jlong_AWindowHandler(handle);

    if (width >= 0 && height >= 0)
        p_awh->event.cb.on_new_window_size(p_awh->wnd, width, height);
}
