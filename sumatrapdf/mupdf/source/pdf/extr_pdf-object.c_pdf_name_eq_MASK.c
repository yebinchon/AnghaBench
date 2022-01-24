#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_7__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ kind; } ;
typedef  TYPE_1__ pdf_obj ;
typedef  int /*<<< orphan*/  fz_context ;
struct TYPE_10__ {int /*<<< orphan*/  n; } ;

/* Variables and functions */
 TYPE_7__* FUNC0 (TYPE_1__*) ; 
 TYPE_1__* PDF_FALSE ; 
 TYPE_1__* PDF_LIMIT ; 
 scalar_t__ PDF_NAME ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(fz_context *ctx, pdf_obj *a, pdf_obj *b)
{
	FUNC1(a);
	FUNC1(b);
	if (a <= PDF_FALSE || b <= PDF_FALSE)
		return 0;
	if (a < PDF_LIMIT || b < PDF_LIMIT)
		return (a == b);
	if (a->kind == PDF_NAME && b->kind == PDF_NAME)
		return !FUNC2(FUNC0(a)->n, FUNC0(b)->n);
	return 0;
}