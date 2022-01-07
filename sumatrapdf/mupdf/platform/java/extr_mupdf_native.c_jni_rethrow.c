
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int JNIEnv ;


 int fz_caught (int *) ;
 int fz_caught_message (int *) ;
 int jni_throw (int *,int ,int ) ;

__attribute__((used)) static void jni_rethrow(JNIEnv *env, fz_context *ctx)
{
 jni_throw(env, fz_caught(ctx), fz_caught_message(ctx));
}
