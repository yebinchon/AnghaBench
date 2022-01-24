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
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
struct TYPE_3__ {int /*<<< orphan*/  pagecount; int /*<<< orphan*/ * doc; int /*<<< orphan*/ * out; } ;
typedef  TYPE_1__ globals ;
typedef  int /*<<< orphan*/  fz_output ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  Encrypt ; 
 int /*<<< orphan*/  Info ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8(fz_context *ctx, globals *glo)
{
	pdf_obj *obj;
	fz_output *out = glo->out;
	pdf_document *doc = glo->doc;
	int version = FUNC7(ctx, doc);

	FUNC1(ctx, out, "\nPDF-%d.%d\n", version / 10, version % 10);

	obj = FUNC2(ctx, FUNC6(ctx, doc), FUNC0(Info));
	if (obj)
	{
		FUNC1(ctx, out, "Info object (%d 0 R):\n", FUNC5(ctx, obj));
		FUNC3(ctx, out, FUNC4(ctx, obj), 1, 1);
	}

	obj = FUNC2(ctx, FUNC6(ctx, doc), FUNC0(Encrypt));
	if (obj)
	{
		FUNC1(ctx, out, "\nEncryption object (%d 0 R):\n", FUNC5(ctx, obj));
		FUNC3(ctx, out, FUNC4(ctx, obj), 1, 1);
	}

	FUNC1(ctx, out, "\nPages: %d\n\n", glo->pagecount);
}