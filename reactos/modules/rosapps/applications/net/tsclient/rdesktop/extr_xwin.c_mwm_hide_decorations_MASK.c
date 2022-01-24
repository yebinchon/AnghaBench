#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  Window ;
struct TYPE_5__ {scalar_t__ decorations; int /*<<< orphan*/  flags; } ;
struct TYPE_4__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_1__ RDPCLIENT ;
typedef  TYPE_2__ PropMotifWmHints ;
typedef  int /*<<< orphan*/  Atom ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  MWM_HINTS_DECORATIONS ; 
 int /*<<< orphan*/  PROP_MOTIF_WM_HINTS_ELEMENTS ; 
 int /*<<< orphan*/  PropModeReplace ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(RDPCLIENT * This, Window wnd)
{
	PropMotifWmHints motif_hints;
	Atom hintsatom;

	/* setup the property */
	motif_hints.flags = MWM_HINTS_DECORATIONS;
	motif_hints.decorations = 0;

	/* get the atom for the property */
	hintsatom = FUNC1(This->display, "_MOTIF_WM_HINTS", False);
	if (!hintsatom)
	{
		FUNC2("Failed to get atom _MOTIF_WM_HINTS: probably your window manager does not support MWM hints\n");
		return;
	}

	FUNC0(This->display, wnd, hintsatom, hintsatom, 32, PropModeReplace,
			(unsigned char *) &motif_hints, PROP_MOTIF_WM_HINTS_ELEMENTS);

}