
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
typedef int fz_context ;
struct TYPE_8__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallLongMethod ) (TYPE_2__**,int ,int ) ;} ;
struct TYPE_7__ {int stream; } ;
typedef TYPE_1__ SeekableStreamState ;
typedef TYPE_2__* JNIEnv ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_throw_java (int *,TYPE_2__**) ;
 TYPE_2__** jni_attach_thread (int *,int*) ;
 int jni_detach_thread (int) ;
 int mid_SeekableStream_position ;
 int stub1 (TYPE_2__**,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__**) ;

__attribute__((used)) static int64_t SeekableOutputStream_tell(fz_context *ctx, void *streamState_)
{
 SeekableStreamState *state = streamState_;
 JNIEnv *env;
 int detach;
 int64_t pos = 0;

 env = jni_attach_thread(ctx, &detach);
 if (env == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot attach to JVM in SeekableOutputStream_tell");

 pos = (*env)->CallLongMethod(env, state->stream, mid_SeekableStream_position);
 if ((*env)->ExceptionCheck(env)) {
  jni_detach_thread(detach);
  fz_throw_java(ctx, env);
 }

 jni_detach_thread(detach);

 return pos;
}
