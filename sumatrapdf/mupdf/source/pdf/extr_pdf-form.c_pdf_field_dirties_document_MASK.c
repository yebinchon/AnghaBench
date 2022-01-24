#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  pdf_obj ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int PDF_FIELD_IS_NO_EXPORT ; 
 int PDF_FIELD_IS_READ_ONLY ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(fz_context *ctx, pdf_document *doc, pdf_obj *field)
{
	int ff = FUNC0(ctx, field);
	if (ff & PDF_FIELD_IS_NO_EXPORT) return 0;
	if (ff & PDF_FIELD_IS_READ_ONLY) return 0;
	return 1;
}