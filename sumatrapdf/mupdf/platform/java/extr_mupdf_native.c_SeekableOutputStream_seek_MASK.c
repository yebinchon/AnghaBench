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
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_8__ {scalar_t__ (* ExceptionCheck ) (TYPE_2__**) ;int /*<<< orphan*/  (* CallLongMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;} ;
struct TYPE_7__ {int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ SeekableStreamState ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_2__**) ; 
 TYPE_2__** FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mid_SeekableStream_seek ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC5 (TYPE_2__**) ; 

__attribute__((used)) static void FUNC6(fz_context *ctx, void *streamState_, int64_t offset, int whence)
{
	SeekableStreamState *state = streamState_;
	JNIEnv *env;
	int detach;

	env = FUNC2(ctx, &detach);
	if (env == NULL)
		FUNC0(ctx, FZ_ERROR_GENERIC, "cannot attach to JVM in SeekableOutputStream_seek");

	(void) (*env)->CallLongMethod(env, state->stream, mid_SeekableStream_seek, offset, whence);
	if ((*env)->ExceptionCheck(env)) {
		FUNC3(detach);
		FUNC1(ctx, env);
	}

	FUNC3(detach);
}