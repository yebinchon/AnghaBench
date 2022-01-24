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
typedef  int /*<<< orphan*/  pdf_page_contents_process_fn ;
typedef  int /*<<< orphan*/  pdf_page ;
typedef  int /*<<< orphan*/  pdf_document ;
typedef  int /*<<< orphan*/  fz_cookie ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,int) ; 

void FUNC1(fz_context *ctx, pdf_document *doc, pdf_page *page, fz_cookie *cookie, pdf_page_contents_process_fn *proc_fn, void *arg, int sanitize, int ascii)
{
	FUNC0(ctx, doc, page, cookie, proc_fn, NULL, NULL, arg, sanitize, ascii);
}