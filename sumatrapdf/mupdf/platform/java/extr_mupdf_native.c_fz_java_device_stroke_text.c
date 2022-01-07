
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int jobject ;
typedef int jfloatArray ;
typedef int fz_text ;
typedef int fz_stroke_state ;
typedef int fz_matrix ;
struct TYPE_12__ {int self; TYPE_2__** env; } ;
typedef TYPE_1__ fz_java_device ;
typedef int fz_device ;
typedef int fz_context ;
typedef int fz_colorspace ;
typedef int fz_color_params ;
struct TYPE_13__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int (* CallVoidMethod ) (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ,float,int) ;} ;
typedef TYPE_2__* JNIEnv ;


 int FZ_MAX_COLORS ;
 int fz_colorspace_n (int *,int *) ;
 int fz_throw_java (int *,TYPE_2__**) ;
 int mid_Device_strokeText ;
 int stub1 (TYPE_2__**,int ,int ,int ,int ,int ,int ,int ,float,int) ;
 scalar_t__ stub2 (TYPE_2__**) ;
 int to_ColorParams_safe (int *,TYPE_2__**,int ) ;
 int to_ColorSpace (int *,TYPE_2__**,int *) ;
 int to_Matrix (int *,TYPE_2__**,int ) ;
 int to_StrokeState (int *,TYPE_2__**,int const*) ;
 int to_Text (int *,TYPE_2__**,int const*) ;
 int to_jfloatArray (int *,TYPE_2__**,float const*,int ) ;

__attribute__((used)) static void
fz_java_device_stroke_text(fz_context *ctx, fz_device *dev, const fz_text *text, const fz_stroke_state *state, fz_matrix ctm, fz_colorspace *cs, const float *color, float alpha, fz_color_params cs_params)
{
 fz_java_device *jdev = (fz_java_device *)dev;
 JNIEnv *env = jdev->env;
 jobject jtext = to_Text(ctx, env, text);
 jobject jstate = to_StrokeState(ctx, env, state);
 jobject jctm = to_Matrix(ctx, env, ctm);
 jobject jcs = to_ColorSpace(ctx, env, cs);
 jfloatArray jcolor = to_jfloatArray(ctx, env, color, cs ? fz_colorspace_n(ctx, cs) : FZ_MAX_COLORS);
 int jcp = to_ColorParams_safe(ctx, env, cs_params);

 (*env)->CallVoidMethod(env, jdev->self, mid_Device_strokeText, jtext, jstate, jctm, jcs, jcolor, alpha, jcp);
 if ((*env)->ExceptionCheck(env))
  fz_throw_java(ctx, env);
}
