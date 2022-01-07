
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int fz_context ;
struct TYPE_8__ {int (* DeleteGlobalRef ) (TYPE_2__**,int ) ;} ;
struct TYPE_7__ {int array; int stream; } ;
typedef TYPE_1__ SeekableStreamState ;
typedef TYPE_2__* JNIEnv ;


 int fz_free (int *,TYPE_1__*) ;
 int fz_warn (int *,char*) ;
 TYPE_2__** jni_attach_thread (int *,int*) ;
 int jni_detach_thread (int) ;
 int stub1 (TYPE_2__**,int ) ;
 int stub2 (TYPE_2__**,int ) ;

__attribute__((used)) static void SeekableOutputStream_drop(fz_context *ctx, void *streamState_)
{
 SeekableStreamState *state = streamState_;
 JNIEnv *env;
 int detach;

 env = jni_attach_thread(ctx, &detach);
 if (env == ((void*)0)) {
  fz_warn(ctx, "cannot attach to JVM in SeekableOutputStream_drop; leaking output stream");
  return;
 }

 (*env)->DeleteGlobalRef(env, state->stream);
 (*env)->DeleteGlobalRef(env, state->array);

 fz_free(ctx, state);

 jni_detach_thread(detach);
}
