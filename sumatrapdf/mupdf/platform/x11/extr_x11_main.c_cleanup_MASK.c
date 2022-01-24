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
struct TYPE_4__ {int /*<<< orphan*/ * ctx; } ;
typedef  TYPE_1__ pdfapp_t ;
typedef  int /*<<< orphan*/  fz_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  xcarrow ; 
 int /*<<< orphan*/  xccaret ; 
 int /*<<< orphan*/  xchand ; 
 int /*<<< orphan*/  xcwait ; 
 int /*<<< orphan*/  xdpy ; 
 int /*<<< orphan*/  xgc ; 
 int /*<<< orphan*/  xicon ; 
 int /*<<< orphan*/  xwin ; 

__attribute__((used)) static void FUNC7(pdfapp_t *app)
{
	fz_context *ctx = app->ctx;

	FUNC6(app);

	FUNC1(xdpy, xwin);

	FUNC4(xdpy, xicon);

	FUNC2(xdpy, xccaret);
	FUNC2(xdpy, xcwait);
	FUNC2(xdpy, xchand);
	FUNC2(xdpy, xcarrow);

	FUNC3(xdpy, xgc);

	FUNC0(xdpy);

	FUNC5(ctx);
}