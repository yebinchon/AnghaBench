
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int obj; TYPE_2__** env; } ;
typedef TYPE_1__ path_walker_state ;
typedef int fz_context ;
struct TYPE_7__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_PathWalker_closePath ;
 int stub1 (TYPE_2__**,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__**) ;

__attribute__((used)) static void
pathWalkClosePath(fz_context *ctx, void *arg)
{
 path_walker_state *state = (path_walker_state *) arg;
 JNIEnv *env = state->env;
 (*env)->CallVoidMethod(env, state->obj, mid_PathWalker_closePath);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
