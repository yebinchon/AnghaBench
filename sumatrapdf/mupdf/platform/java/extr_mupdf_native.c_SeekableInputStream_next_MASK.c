#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {unsigned char* rp; unsigned char* wp; int pos; TYPE_2__* state; } ;
typedef  TYPE_1__ fz_stream ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_12__ {int (* CallIntMethod ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GetByteArrayRegion ) (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ;scalar_t__ (* ExceptionCheck ) (TYPE_3__**) ;} ;
struct TYPE_11__ {scalar_t__ buffer; int /*<<< orphan*/  array; int /*<<< orphan*/  stream; } ;
typedef  TYPE_2__ SeekableStreamState ;
typedef  TYPE_3__* JNIEnv ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_3__**) ; 
 TYPE_3__** FUNC2 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  mid_SeekableInputStream_read ; 
 int FUNC4 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 

__attribute__((used)) static int FUNC7(fz_context *ctx, fz_stream *stm, size_t max)
{
	SeekableStreamState *state = stm->state;
	JNIEnv *env;
	int detach;
	int n, ch;

	env = FUNC2(ctx, &detach);
	if (env == NULL)
		FUNC0(ctx, FZ_ERROR_GENERIC, "cannot attach to JVM in SeekableInputStream_next");

	n = (*env)->CallIntMethod(env, state->stream, mid_SeekableInputStream_read, state->array);
	if ((*env)->ExceptionCheck(env)) {
		FUNC3(detach);
		FUNC1(ctx, env);
	}

	if (n > 0)
	{
		(*env)->GetByteArrayRegion(env, state->array, 0, n, state->buffer);

		/* update stm->pos so fz_tell knows the current position */
		stm->rp = (unsigned char *)state->buffer;
		stm->wp = stm->rp + n;
		stm->pos += n;

		ch = *stm->rp++;
	}
	else if (n < 0)
	{
		ch = EOF;
	}
	else
	{
		FUNC3(detach);
		FUNC0(ctx, FZ_ERROR_GENERIC, "no bytes read");
	}

	FUNC3(detach);
	return ch;
}