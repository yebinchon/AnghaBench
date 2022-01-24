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
typedef  int /*<<< orphan*/  jint ;
typedef  int /*<<< orphan*/  fz_rect ;
typedef  int /*<<< orphan*/  fz_matrix ;
struct TYPE_8__ {int /*<<< orphan*/  self; TYPE_2__** env; } ;
typedef  TYPE_1__ fz_java_device ;
typedef  int /*<<< orphan*/  fz_device ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_9__ {int (* CallIntMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  mid_Device_beginTile ; 
 int FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,float,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(fz_context *ctx, fz_device *dev, fz_rect area, fz_rect view, float xstep, float ystep, fz_matrix ctm, int id)
{
	fz_java_device *jdev = (fz_java_device *)dev;
	JNIEnv *env = jdev->env;
	jobject jarea = FUNC4(ctx, env, area);
	jobject jview = FUNC4(ctx, env, view);
	jobject jctm = FUNC3(ctx, env, ctm);
	int res;

	res = (*env)->CallIntMethod(env, jdev->self, mid_Device_beginTile, jarea, jview, xstep, ystep, jctm, (jint)id);
	if ((*env)->ExceptionCheck(env))
		FUNC0(ctx, env);

	return res;
}