
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jobject ;
typedef int fz_shade ;
typedef int fz_matrix ;
struct TYPE_8__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_color_params ;
struct TYPE_9__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ,float) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_fillShade ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ,float) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int to_Matrix (int *,TYPE_2__**,int ) ;
 int to_Shade (int *,TYPE_2__**,int *) ;

__attribute__((used)) static void
fz_java_device_fill_shade(fz_context *ctx, fz_device *dev, fz_shade *shd, fz_matrix ctm, float alpha, fz_color_params color_params)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jobject jshd = to_Shade(ctx, env, shd);
 jobject jctm = to_Matrix(ctx, env, ctm);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_fillShade, jshd, jctm, alpha);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
