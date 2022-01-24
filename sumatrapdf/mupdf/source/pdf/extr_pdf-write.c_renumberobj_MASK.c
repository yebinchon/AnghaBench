#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__* renumber_map; } ;
typedef  TYPE_1__ pdf_write_state ;
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * PDF_NULL ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(fz_context *ctx, pdf_document *doc, pdf_write_state *opts, pdf_obj *obj)
{
	int i;
	int xref_len = FUNC12(ctx, doc);

	if (FUNC8(ctx, obj))
	{
		int n = FUNC5(ctx, obj);
		for (i = 0; i < n; i++)
		{
			pdf_obj *key = FUNC3(ctx, obj, i);
			pdf_obj *val = FUNC4(ctx, obj, i);
			if (FUNC9(ctx, val))
			{
				int o = FUNC11(ctx, val);
				if (o >= xref_len || o <= 0 || opts->renumber_map[o] == 0)
					val = PDF_NULL;
				else
					val = FUNC10(ctx, doc, opts->renumber_map[o], 0);
				FUNC6(ctx, obj, key, val);
			}
			else
			{
				FUNC13(ctx, doc, opts, val);
			}
		}
	}

	else if (FUNC7(ctx, obj))
	{
		int n = FUNC1(ctx, obj);
		for (i = 0; i < n; i++)
		{
			pdf_obj *val = FUNC0(ctx, obj, i);
			if (FUNC9(ctx, val))
			{
				int o = FUNC11(ctx, val);
				if (o >= xref_len || o <= 0 || opts->renumber_map[o] == 0)
					val = PDF_NULL;
				else
					val = FUNC10(ctx, doc, opts->renumber_map[o], 0);
				FUNC2(ctx, obj, i, val);
			}
			else
			{
				FUNC13(ctx, doc, opts, val);
			}
		}
	}
}