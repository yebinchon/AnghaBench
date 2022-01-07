
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int jobject ;
typedef int fz_stroke_state ;
typedef int fz_rect ;
typedef int fz_path ;
typedef int fz_matrix ;
struct TYPE_9__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_10__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_clipStrokePath ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int to_Matrix (int *,TYPE_2__**,int ) ;
 int to_Path (int *,TYPE_2__**,int const*) ;
 int to_StrokeState (int *,TYPE_2__**,int const*) ;

__attribute__((used)) static void
fz_java_device_clip_stroke_path(fz_context *ctx, fz_device *dev, const fz_path *path, const fz_stroke_state *state, fz_matrix ctm, fz_rect scissor)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jobject jpath = to_Path(ctx, env, path);
 jobject jstate = to_StrokeState(ctx, env, state);
 jobject jctm = to_Matrix(ctx, env, ctm);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_clipStrokePath, jpath, jstate, jctm);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
