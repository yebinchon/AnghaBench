
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* ThrowNew ) (TYPE_1__**,int ,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int cls_IllegalArgumentException ;
 int stub1 (TYPE_1__**,int ,char const*) ;

__attribute__((used)) static void jni_throw_arg(JNIEnv *env, const char *info)
{
 (*env)->ThrowNew(env, cls_IllegalArgumentException, info);
}
