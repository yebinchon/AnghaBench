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
struct TYPE_4__ {int /*<<< orphan*/  obj; } ;
typedef  TYPE_1__ pdf_annot ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  DA ; 
 int /*<<< orphan*/  DS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int,char const*,float,float const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

void
FUNC6(fz_context *ctx, pdf_annot *annot, const char *font, float size, const float color[3])
{
	char buf[100];

	FUNC4(ctx, buf, sizeof buf, font, size, color);

	FUNC2(ctx, annot->obj, FUNC0(DA), buf, FUNC5(buf));

	FUNC1(ctx, annot->obj, FUNC0(DS)); /* not supported */
	FUNC1(ctx, annot->obj, FUNC0(RC)); /* not supported */

	FUNC3(ctx, annot);
}