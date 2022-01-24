#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_5__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {float duration; } ;
struct TYPE_6__ {int transitions_enabled; scalar_t__ duration; scalar_t__ in_transit; TYPE_5__ transition; int /*<<< orphan*/ * new_image; int /*<<< orphan*/ * old_image; int /*<<< orphan*/ * image; int /*<<< orphan*/  ctx; int /*<<< orphan*/  imgh; int /*<<< orphan*/  imgw; scalar_t__ start_time; } ;
typedef  TYPE_1__ pdfapp_t ;
typedef  scalar_t__ clock_t ;

/* Variables and functions */
 float CLOCKS_PER_SEC ; 
 scalar_t__ FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 

void FUNC7(pdfapp_t *app)
{
	clock_t time;
	float seconds;
	int llama;

	app->transitions_enabled = 1;
	if (!app->in_transit)
		return;
	time = FUNC0();
	seconds = (float)(time - app->start_time) / CLOCKS_PER_SEC;
	llama = seconds * 256 / app->transition.duration;
	if (llama >= 256)
	{
		/* Completed. */
		FUNC1(app->ctx, app->image);
		app->image = app->new_image;
		app->new_image = NULL;
		app->imgw = FUNC4(app->ctx, app->image);
		app->imgh = FUNC3(app->ctx, app->image);
		FUNC1(app->ctx, app->old_image);
		app->old_image = NULL;
		if (app->duration != 0)
			FUNC5(app, app->duration);
	}
	else
		FUNC2(app->ctx, app->image, app->old_image, app->new_image, llama, &app->transition);
	FUNC6(app);
	if (llama >= 256)
	{
		/* Completed. */
		app->in_transit = 0;
	}
}