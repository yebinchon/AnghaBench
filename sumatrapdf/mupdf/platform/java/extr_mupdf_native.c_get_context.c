
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fz_context ;
typedef int JNIEnv ;


 scalar_t__ TlsGetValue (int ) ;
 int TlsSetValue (int ,int *) ;
 int base_context ;
 int context_key ;
 int * fz_clone_context (int ) ;
 int jni_throw_oom (int *,char*) ;
 int pthread_getspecific (int ) ;
 int pthread_setspecific (int ,int *) ;

__attribute__((used)) static fz_context *get_context(JNIEnv *env)
{
 fz_context *ctx = (fz_context *)



  pthread_getspecific(context_key);


 if (ctx)
  return ctx;

 ctx = fz_clone_context(base_context);
 if (!ctx) { jni_throw_oom(env, "failed to clone fz_context"); return ((void*)0); }




 pthread_setspecific(context_key, ctx);

 return ctx;
}
