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
 int /*<<< orphan*/  CIDSystemInfo ; 
 int /*<<< orphan*/  Ordering ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Registry ; 
 int /*<<< orphan*/  Supplement ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5(fz_context *ctx, pdf_document *doc, pdf_obj *fobj, const char *reg, const char *ord, int supp)
{
	pdf_obj *csi = FUNC1(ctx, fobj, FUNC0(CIDSystemInfo), 3);
	FUNC3(ctx, csi, FUNC0(Registry), reg, FUNC4(reg));
	FUNC3(ctx, csi, FUNC0(Ordering), ord, FUNC4(ord));
	FUNC2(ctx, csi, FUNC0(Supplement), supp);
}