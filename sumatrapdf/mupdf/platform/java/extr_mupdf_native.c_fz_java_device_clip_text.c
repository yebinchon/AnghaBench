
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jobject ;
typedef int fz_text ;
typedef int fz_rect ;
typedef int fz_matrix ;
struct TYPE_8__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_9__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_clipText ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int to_Matrix (int *,TYPE_2__**,int ) ;
 int to_Text (int *,TYPE_2__**,int const*) ;

__attribute__((used)) static void
fz_java_device_clip_text(fz_context *ctx, fz_device *dev, const fz_text *text, fz_matrix ctm, fz_rect scissor)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jobject jtext = to_Text(ctx, env, text);
 jobject jctm = to_Matrix(ctx, env, ctm);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_clipText, jtext, jctm);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
