
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {unsigned char* rp; unsigned char* wp; int pos; TYPE_2__* state; } ;
typedef TYPE_1__ fz_stream ;
typedef int fz_context ;
struct TYPE_12__ {int (* CallIntMethod ) (TYPE_3__**,int ,int ,int ) ;int (* GetByteArrayRegion ) (TYPE_3__**,int ,int ,int,scalar_t__) ;scalar_t__ (* ExceptionCheck ) (TYPE_3__**) ;} ;
struct TYPE_11__ {scalar_t__ buffer; int array; int stream; } ;
typedef TYPE_2__ SeekableStreamState ;
typedef TYPE_3__* JNIEnv ;


 int EOF ;
 int FZ_ERROR_GENERIC ;
 int fz_throw (int *,int ,char*) ;
 int fz_throw_java (int *,TYPE_3__**) ;
 TYPE_3__** jni_attach_thread (int *,int*) ;
 int jni_detach_thread (int) ;
 int mid_SeekableInputStream_read ;
 int stub1 (TYPE_3__**,int ,int ,int ) ;
 scalar_t__ stub2 (TYPE_3__**) ;
 int stub3 (TYPE_3__**,int ,int ,int,scalar_t__) ;

__attribute__((used)) static int SeekableInputStream_next(fz_context *ctx, fz_stream *stm, size_t max)
{
 SeekableStreamState *state = stm->state;
 JNIEnv *env;
 int detach;
 int n, ch;

 env = jni_attach_thread(ctx, &detach);
 if (env == ((void*)0))
  fz_throw(ctx, FZ_ERROR_GENERIC, "cannot attach to JVM in SeekableInputStream_next");

 n = (*env)->CallIntMethod(env, state->stream, mid_SeekableInputStream_read, state->array);
 if ((*env)->ExceptionCheck(env)) {
  jni_detach_thread(detach);
  fz_throw_java(ctx, env);
 }

 if (n > 0)
 {
  (*env)->GetByteArrayRegion(env, state->array, 0, n, state->buffer);


  stm->rp = (unsigned char *)state->buffer;
  stm->wp = stm->rp + n;
  stm->pos += n;

  ch = *stm->rp++;
 }
 else if (n < 0)
 {
  ch = EOF;
 }
 else
 {
  jni_detach_thread(detach);
  fz_throw(ctx, FZ_ERROR_GENERIC, "no bytes read");
 }

 jni_detach_thread(detach);
 return ch;
}
