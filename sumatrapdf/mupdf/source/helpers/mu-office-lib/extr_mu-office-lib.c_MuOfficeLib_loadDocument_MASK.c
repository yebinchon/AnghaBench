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
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_9__ {int /*<<< orphan*/  password_sem; int /*<<< orphan*/  thread; int /*<<< orphan*/  path; void* cookie; int /*<<< orphan*/ * error; int /*<<< orphan*/ * progress; int /*<<< orphan*/  ctx; TYPE_1__* mu; } ;
struct TYPE_8__ {int /*<<< orphan*/ * ctx; } ;
typedef  int /*<<< orphan*/  MuOfficeLoadingProgressFn ;
typedef  int /*<<< orphan*/  MuOfficeLoadingErrorFn ;
typedef  TYPE_1__ MuOfficeLib ;
typedef  TYPE_2__ MuOfficeDoc ;
typedef  int /*<<< orphan*/  MuError ;

/* Variables and functions */
 int /*<<< orphan*/  MuError_OK ; 
 int /*<<< orphan*/  MuError_OOM ; 
 int /*<<< orphan*/  MuOfficeDocErrorType_IllegalArgument ; 
 int /*<<< orphan*/  MuOfficeDocErrorType_NoError ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  load_worker ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

MuError FUNC7(	MuOfficeLib               *mu,
					const char                *path,
					MuOfficeLoadingProgressFn *progressFn,
					MuOfficeLoadingErrorFn    *errorFn,
					void                      *cookie,
					MuOfficeDoc              **pDoc)
{
	MuOfficeDoc *doc;
	fz_context *ctx;

	if (mu == NULL || pDoc == NULL)
		return MuOfficeDocErrorType_IllegalArgument;

	*pDoc = NULL;

	doc = FUNC0(1, sizeof(*doc));
	if (doc == NULL)
		return MuOfficeDocErrorType_NoError;

	ctx = mu->ctx;
	doc->mu       = mu;
	doc->ctx      = FUNC2(ctx);
	doc->progress = progressFn;
	doc->error    = errorFn;
	doc->cookie   = cookie;
	doc->path     = FUNC3(ctx, path);
	if (FUNC4(&doc->password_sem))
		goto fail;

	if (FUNC5(&doc->thread, load_worker, doc))
		goto fail;

	*pDoc = doc;

	return MuError_OK;
fail:
	FUNC6(&doc->password_sem);
	FUNC1(doc);

	return MuError_OOM;
}