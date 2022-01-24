#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {int /*<<< orphan*/  (* DeleteGlobalRef ) (TYPE_2__**,int /*<<< orphan*/ ) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  array; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ SeekableStreamState ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__** FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(fz_context *ctx, void *streamState_)
{
	SeekableStreamState *state = streamState_;
	JNIEnv *env;
	int detach;

	env = FUNC2(ctx, &detach);
	if (env == NULL) {
		FUNC1(ctx, "cannot attach to JVM in SeekableInputStream_drop; leaking input stream");
		return;
	}

	(*env)->DeleteGlobalRef(env, state->stream);
	(*env)->DeleteGlobalRef(env, state->array);

	FUNC0(ctx, state);

	FUNC3(detach);
}