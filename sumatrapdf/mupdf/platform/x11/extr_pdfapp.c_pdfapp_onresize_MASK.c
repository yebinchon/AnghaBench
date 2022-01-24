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
struct TYPE_5__ {int winw; int winh; int /*<<< orphan*/  pany; int /*<<< orphan*/  panx; } ;
typedef  TYPE_1__ pdfapp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

void FUNC2(pdfapp_t *app, int w, int h)
{
	if (app->winw != w || app->winh != h)
	{
		app->winw = w;
		app->winh = h;
		FUNC0(app, app->panx, app->pany);
		FUNC1(app);
	}
}