
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
typedef int jboolean ;
typedef int fz_rect ;
struct TYPE_8__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
struct TYPE_9__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ,float) ;} ;
typedef TYPE_2__* JNIEnv ;


 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_beginGroup ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ,float) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int to_ColorSpace (int *,TYPE_2__**,int *) ;
 int to_Rect (int *,TYPE_2__**,int ) ;

__attribute__((used)) static void
fz_java_device_begin_group(fz_context *ctx, fz_device *dev, fz_rect rect, fz_colorspace *cs, int isolated, int knockout, int blendmode, float alpha)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jobject jrect = to_Rect(ctx, env, rect);
 jobject jcs = to_ColorSpace(ctx, env, cs);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_beginGroup, jrect, jcs, (jboolean)isolated, (jboolean)knockout, (jint)blendmode, alpha);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
