#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_js ;
struct TYPE_4__ {int /*<<< orphan*/ * js; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 

char *FUNC5(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
	pdf_js *js = doc->js;
	if (js)
	{
		pdf_obj *action = FUNC0(ctx, field, "AA/F/JS");
		if (action)
		{
			const char *value = FUNC2(ctx, field);
			FUNC3(js, field, value, 1);
			FUNC1(ctx, doc, field, "AA/F/JS", action);
			return FUNC4(js);
		}
	}
	return NULL;
}