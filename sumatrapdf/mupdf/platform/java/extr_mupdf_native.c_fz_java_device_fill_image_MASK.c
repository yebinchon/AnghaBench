#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  jobject ;
typedef  int /*<<< orphan*/  fz_matrix ;
struct TYPE_8__ {int /*<<< orphan*/  self; TYPE_2__** env; } ;
typedef  TYPE_1__ fz_java_device ;
typedef  int /*<<< orphan*/  fz_image ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
typedef  int /*<<< orphan*/  fz_color_params ;
struct TYPE_9__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  mid_Device_fillImage ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float) ; 
 scalar_t__ FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, fz_device *dev, fz_image *img, fz_matrix ctm, float alpha, fz_color_params color_params)
{
	fz_java_device *jdev = (fz_java_device *)dev;
	JNIEnv *env = jdev->env;
	jobject jimg = FUNC3(ctx, env, img);
	jobject jctm = FUNC4(ctx, env, ctm);

	(*env)->CallVoidMethod(env, jdev->self, mid_Device_fillImage, jimg, jctm, alpha);
	if ((*env)->ExceptionCheck(env))
		FUNC0(ctx, env);
}