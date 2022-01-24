#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobject ;
typedef  int /*<<< orphan*/  jint ;
typedef  int /*<<< orphan*/  jfloatArray ;
typedef  int /*<<< orphan*/  fz_rect ;
struct TYPE_10__ {int /*<<< orphan*/  self; TYPE_2__** env; } ;
typedef  TYPE_1__ fz_java_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_colorspace ;
typedef  int /*<<< orphan*/  fz_color_params ;
struct TYPE_11__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_MAX_COLORS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  mid_Device_beginMask ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (TYPE_2__**) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,TYPE_2__**,float const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, fz_device *dev, fz_rect rect, int luminosity, fz_colorspace *cs, const float *bc, fz_color_params cs_params)
{
	fz_java_device *jdev = (fz_java_device *)dev;
	JNIEnv *env = jdev->env;
	jobject jrect = FUNC6(ctx, env, rect);
	jobject jcs = FUNC5(ctx, env, cs);
	jfloatArray jbc = FUNC7(ctx, env, bc, cs ? FUNC0(ctx, cs) : FZ_MAX_COLORS);
	int jcp = FUNC4(ctx, env, cs_params);

	(*env)->CallVoidMethod(env, jdev->self, mid_Device_beginMask, jrect, (jint)luminosity, jcs, jbc, jcp);
	if ((*env)->ExceptionCheck(env))
		FUNC1(ctx, env);
}