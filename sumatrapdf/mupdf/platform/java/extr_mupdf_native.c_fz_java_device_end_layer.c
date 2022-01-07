
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_7__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_endLayer ;
 int stub1 (TYPE_2__**,int ,int ) ;
 scalar_t__ stub2 (TYPE_2__**) ;

__attribute__((used)) static void
fz_java_device_end_layer(fz_context *ctx, fz_device *dev)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_endLayer);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
