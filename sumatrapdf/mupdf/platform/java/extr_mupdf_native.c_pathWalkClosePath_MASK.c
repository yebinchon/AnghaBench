#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  obj; TYPE_2__** env; } ;
typedef  TYPE_1__ path_walker_state ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_7__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 int /*<<< orphan*/  mid_PathWalker_closePath ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (TYPE_2__**) ; 

__attribute__((used)) static void
FUNC3(fz_context *ctx, void *arg)
{
	path_walker_state *state = (path_walker_state *) arg;
	JNIEnv *env = state->env;
	(*env)->CallVoidMethod(env, state->obj, mid_PathWalker_closePath);
	if ((*env)->ExceptionCheck(env))
		FUNC0(ctx, env);
}