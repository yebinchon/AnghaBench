
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_9__ {unsigned char* rp; unsigned char* wp; int pos; TYPE_2__* state; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;
struct TYPE_11__ {scalar_t__ (* ExceptionCheck ) (TYPE_3__**) ;int (* CallLongMethod ) (TYPE_3__**,int ,int ,int ,int) ;} ;
struct TYPE_10__ {scalar_t__ buffer; int stream; } ;
typedef TYPE_2__ SeekableStreamState ;
typedef TYPE_3__* JNIEnv ;


 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_throw_java (int *,TYPE_3__**) ;
 TYPE_3__** jni_attach_thread (int *,int*) ;
 int jni_detach_thread (int) ;
 int mid_SeekableStream_seek ;
 int stub1 (TYPE_3__**,int ,int ,int ,int) ;
 scalar_t__ stub2 (TYPE_3__**) ;

__attribute__((used)) static void SeekableInputStream_seek(fz_context *ctx, fz_stream *stm, int64_t offset, int whence)
{
 SeekableStreamState *state = stm->state;
 JNIEnv *env;
 int detach;
 int64_t pos;

 env = jni_attach_thread(ctx, &detach);
 if (env == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot attach to JVM in SeekableInputStream_seek");

 pos = (*env)->CallLongMethod(env, state->stream, mid_SeekableStream_seek, offset, whence);
 if ((*env)->ExceptionCheck(env)) {
  jni_detach_thread(detach);
  fz_throw_java(ctx, env);
 }

 stm->pos = pos;
 stm->rp = stm->wp = (unsigned char *)state->buffer;

 jni_detach_thread(detach);
}
