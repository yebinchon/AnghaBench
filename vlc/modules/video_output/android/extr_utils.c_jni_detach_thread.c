
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* GetJavaVM ) (TYPE_2__**,TYPE_1__***) ;} ;
struct TYPE_7__ {int (* DetachCurrentThread ) (TYPE_1__**) ;} ;
typedef TYPE_1__* JavaVM ;
typedef TYPE_2__* JNIEnv ;


 int assert (TYPE_1__**) ;
 int stub1 (TYPE_2__**,TYPE_1__***) ;
 int stub2 (TYPE_1__**) ;

__attribute__((used)) static void
jni_detach_thread(void *data)
{
    JNIEnv *env = data;
    JavaVM *jvm;

    (*env)->GetJavaVM(env, &jvm);
    assert(jvm);
    (*jvm)->DetachCurrentThread(jvm);
}
