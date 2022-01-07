
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int jobject ;
typedef int jfloatArray ;
typedef int jboolean ;
typedef int fz_path ;
typedef int fz_matrix ;
struct TYPE_11__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_12__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ,float,int) ;} ;
typedef TYPE_2__* JNIEnv ;


 int FZ_MAX_COLORS ;
 int fz_colorspace_n (int *,int *) ;
 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_fillPath ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ,float,int) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int to_ColorParams_safe (int *,TYPE_2__**,int ) ;
 int to_ColorSpace (int *,TYPE_2__**,int *) ;
 int to_Matrix (int *,TYPE_2__**,int ) ;
 int to_Path (int *,TYPE_2__**,int const*) ;
 int to_jfloatArray (int *,TYPE_2__**,float const*,int ) ;

__attribute__((used)) static void
fz_java_device_fill_path(fz_context *ctx, fz_device *dev, const fz_path *path, int even_odd, fz_matrix ctm, fz_colorspace *cs, const float *color, float alpha, fz_color_params cs_params)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jobject jpath = to_Path(ctx, env, path);
 jobject jcs = to_ColorSpace(ctx, env, cs);
 jobject jctm = to_Matrix(ctx, env, ctm);
 jfloatArray jcolor = to_jfloatArray(ctx, env, color, cs ? fz_colorspace_n(ctx, cs) : FZ_MAX_COLORS);
 int jcp = to_ColorParams_safe(ctx, env, cs_params);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_fillPath, jpath, (jboolean)even_odd, jctm, jcs, jcolor, alpha, jcp);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
