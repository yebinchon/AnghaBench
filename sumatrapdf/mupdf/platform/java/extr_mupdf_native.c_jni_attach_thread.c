
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_4__ {int (* GetEnv ) (TYPE_1__**,void*,int ) ;int (* AttachCurrentThread ) (TYPE_1__**,void*,int *) ;} ;
typedef int JNIEnv ;


 int JNI_EDETACHED ;
 int JNI_OK ;
 int MY_JNI_VERSION ;
 TYPE_1__** jvm ;
 int stub1 (TYPE_1__**,void*,int ) ;
 int stub2 (TYPE_1__**,void*,int *) ;

__attribute__((used)) static JNIEnv *jni_attach_thread(fz_context *ctx, int *detach)
{
 JNIEnv *env = ((void*)0);
 int state;

 *detach = 0;
 state = (*jvm)->GetEnv(jvm, (void*)&env, MY_JNI_VERSION);
 if (state == JNI_EDETACHED)
 {
  *detach = 1;
  state = (*jvm)->AttachCurrentThread(jvm, (void*)&env, ((void*)0));
 }

 if (state != JNI_OK)
  return ((void*)0);

 return env;
}
