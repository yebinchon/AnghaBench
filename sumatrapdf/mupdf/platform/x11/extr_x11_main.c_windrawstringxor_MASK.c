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
typedef  int /*<<< orphan*/  pdfapp_t ;
struct TYPE_4__ {int function; } ;
typedef  TYPE_1__ XGCValues ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GCFunction ; 
 int GXxor ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  xdpy ; 
 int /*<<< orphan*/  xgc ; 
 int /*<<< orphan*/  xwin ; 

__attribute__((used)) static void FUNC8(pdfapp_t *app, int x, int y, char *s)
{
	int prevfunction;
	XGCValues xgcv;

	FUNC5(xdpy, xgc, GCFunction, &xgcv);
	prevfunction = xgcv.function;
	xgcv.function = GXxor;
	FUNC2(xdpy, xgc, GCFunction, &xgcv);

	FUNC6(xdpy, xgc, FUNC1(xdpy, FUNC0(xdpy)));

	FUNC3(xdpy, xwin, xgc, x, y, s, FUNC7(s));
	FUNC4(xdpy);

	FUNC5(xdpy, xgc, GCFunction, &xgcv);
	xgcv.function = prevfunction;
	FUNC2(xdpy, xgc, GCFunction, &xgcv);
}