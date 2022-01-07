
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* ThrowNew ) (TYPE_1__**,int ,char const*) ;} ;
typedef TYPE_1__* JNIEnv ;


 int FZ_ERROR_TRYLATER ;
 int cls_RuntimeException ;
 int cls_TryLaterException ;
 int stub1 (TYPE_1__**,int ,char const*) ;
 int stub2 (TYPE_1__**,int ,char const*) ;

__attribute__((used)) static void jni_throw(JNIEnv *env, int type, const char *mess)
{
 if (type == FZ_ERROR_TRYLATER)
  (*env)->ThrowNew(env, cls_TryLaterException, mess);
 else
  (*env)->ThrowNew(env, cls_RuntimeException, mess);
}
