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
typedef  int /*<<< orphan*/  pdf_lexbuf ;
struct TYPE_5__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_1__ pdf_document ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FZ_ERROR_GENERIC ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static pdf_obj *
FUNC8(fz_context *ctx, pdf_document *doc, int64_t ofs, pdf_lexbuf *buf)
{
	pdf_obj *trailer;
	int c;

	FUNC2(ctx, doc->file, ofs, SEEK_SET);

	while (FUNC5(FUNC0(ctx, doc->file)))
		FUNC1(ctx, doc->file);

	c = FUNC0(ctx, doc->file);
	if (c == 'x')
		trailer = FUNC7(ctx, doc, buf);
	else if (FUNC4(c))
		trailer = FUNC6(ctx, doc, buf);
	else
		FUNC3(ctx, FZ_ERROR_GENERIC, "cannot recognize xref format");

	return trailer;
}