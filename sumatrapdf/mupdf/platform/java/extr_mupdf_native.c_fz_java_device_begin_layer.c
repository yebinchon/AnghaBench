
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int jstring ;
struct TYPE_7__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_8__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ) ;int (* NewStringUTF ) (TYPE_2__**,char const*) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_beginLayer ;
 int stub1 (TYPE_2__**,char const*) ;
 int stub2 (TYPE_2__**,int ,int ,int ) ;
 scalar_t__ stub3 (TYPE_2__**) ;

__attribute__((used)) static void
fz_java_device_begin_layer(fz_context *ctx, fz_device *dev, const char *name)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jstring jname;

 jname = (*env)->NewStringUTF(env, name);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_beginLayer, jname);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
