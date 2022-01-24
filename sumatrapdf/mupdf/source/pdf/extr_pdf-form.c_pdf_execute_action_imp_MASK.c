#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
struct TYPE_5__ {scalar_t__ js; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Fields ; 
 int /*<<< orphan*/  Flags ; 
 int /*<<< orphan*/  JS ; 
 int /*<<< orphan*/  JavaScript ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ResetForm ; 
 int /*<<< orphan*/ * S ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC6(fz_context *ctx, pdf_document *doc, pdf_obj *target, const char *path, pdf_obj *action)
{
	pdf_obj *S = FUNC1(ctx, action, FUNC0(*S));
	if (FUNC4(ctx, S, FUNC0(JavaScript)))
	{
		if (doc->js)
			FUNC3(ctx, doc, target, path, FUNC1(ctx, action, FUNC0(JS)));
	}
	if (FUNC4(ctx, S, FUNC0(ResetForm)))
	{
		pdf_obj *fields = FUNC1(ctx, action, FUNC0(Fields));
		int flags = FUNC2(ctx, action, FUNC0(Flags));
		FUNC5(ctx, doc, fields, flags & 1);
	}
}