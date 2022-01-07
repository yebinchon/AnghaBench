
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
struct TYPE_5__ {int (* DeleteGlobalRef ) (TYPE_2__**,int ) ;} ;
typedef TYPE_2__* JNIEnv ;


 int stub1 (TYPE_2__**,int ) ;

__attribute__((used)) static void
fz_java_device_drop(fz_context *ctx, fz_device *dev)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;

 (*env)->DeleteGlobalRef(env, jdev->self);
}
