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
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  BS ; 
 int /*<<< orphan*/  D ; 
 int /*<<< orphan*/  I ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S ; 
 int /*<<< orphan*/  U ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

void FUNC4(fz_context *ctx, pdf_obj *field, const char *text)
{
	pdf_obj *val;

	if (!FUNC3(text, "Solid"))
		val = FUNC0(S);
	else if (!FUNC3(text, "Dashed"))
		val = FUNC0(D);
	else if (!FUNC3(text, "Beveled"))
		val = FUNC0(B);
	else if (!FUNC3(text, "Inset"))
		val = FUNC0(I);
	else if (!FUNC3(text, "Underline"))
		val = FUNC0(U);
	else
		return;

	FUNC1(ctx, field, val, FUNC0(BS), FUNC0(S), NULL);
	FUNC2(ctx, field);
}