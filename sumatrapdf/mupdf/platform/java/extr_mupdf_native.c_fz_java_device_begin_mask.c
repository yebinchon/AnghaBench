
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int jobject ;
typedef int jint ;
typedef int jfloatArray ;
typedef int fz_rect ;
struct TYPE_10__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_11__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ,int ,int ,int) ;} ;
typedef TYPE_2__* JNIEnv ;


 int FZ_MAX_COLORS ;
 int fz_colorspace_n (int *,int *) ;
 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_beginMask ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ,int ,int ,int) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int to_ColorParams_safe (int *,TYPE_2__**,int ) ;
 int to_ColorSpace (int *,TYPE_2__**,int *) ;
 int to_Rect (int *,TYPE_2__**,int ) ;
 int to_jfloatArray (int *,TYPE_2__**,float const*,int ) ;

__attribute__((used)) static void
fz_java_device_begin_mask(fz_context *ctx, fz_device *dev, fz_rect rect, int luminosity, fz_colorspace *cs, const float *bc, fz_color_params cs_params)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jobject jrect = to_Rect(ctx, env, rect);
 jobject jcs = to_ColorSpace(ctx, env, cs);
 jfloatArray jbc = to_jfloatArray(ctx, env, bc, cs ? fz_colorspace_n(ctx, cs) : FZ_MAX_COLORS);
 int jcp = to_ColorParams_safe(ctx, env, cs_params);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_beginMask, jrect, (jint)luminosity, jcs, jbc, jcp);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
