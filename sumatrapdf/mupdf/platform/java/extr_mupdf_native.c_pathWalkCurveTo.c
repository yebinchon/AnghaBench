
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int obj; TYPE_2__** env; } ;
typedef TYPE_1__ path_walker_state ;
typedef int fz_context ;
struct TYPE_7__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,float,float,float,float,float,float) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_PathWalker_curveTo ;
 int stub1 (TYPE_2__**,int ,int ,float,float,float,float,float,float) ;
 scalar_t__ stub2 (TYPE_2__**) ;

__attribute__((used)) static void
pathWalkCurveTo(fz_context *ctx, void *arg, float x1, float y1, float x2, float y2, float x3, float y3)
{
 path_walker_state *state = (path_walker_state *)arg;
 JNIEnv *env = state->env;
 (*env)->CallVoidMethod(env, state->obj, mid_PathWalker_curveTo, x1, y1, x2, y2, x3, y3);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
