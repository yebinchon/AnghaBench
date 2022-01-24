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
struct TYPE_5__ {int /*<<< orphan*/  ctx; int /*<<< orphan*/  doc; } ;
typedef  TYPE_1__ pdfapp_t ;
typedef  int /*<<< orphan*/  pdf_document ;

/* Variables and functions */
#define  CANCEL 130 
#define  DISCARD 129 
#define  SAVE 128 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*) ; 

int FUNC4(pdfapp_t *app)
{
	pdf_document *idoc = FUNC1(app->ctx, app->doc);

	if (idoc && FUNC0(app->ctx, idoc))
	{
		switch (FUNC3(app))
		{
		case DISCARD:
			return 1;

		case CANCEL:
			return 0;

		case SAVE:
			return FUNC2(app);
		}
	}

	return 1;
}