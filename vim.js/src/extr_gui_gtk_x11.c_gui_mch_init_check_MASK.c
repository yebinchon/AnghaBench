#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  dying; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FAIL ; 
 int OK ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ e_opendisp ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ gtk_socket_id ; 
 TYPE_1__ gui ; 
 int /*<<< orphan*/  gui_argc ; 
 int /*<<< orphan*/  gui_argv ; 
 int using_gnome ; 

int
FUNC4(void)
{
#ifdef FEAT_GUI_GNOME
    if (gtk_socket_id == 0)
	using_gnome = 1;
#endif

    /* This defaults to argv[0], but we want it to match the name of the
     * shipped gvim.desktop so that Vim's windows can be associated with this
     * file. */
    FUNC2("gvim");

    /* Don't use gtk_init() or gnome_init(), it exits on failure. */
    if (!FUNC3(&gui_argc, &gui_argv))
    {
	gui.dying = TRUE;
	FUNC0(FUNC1((char *)e_opendisp));
	return FAIL;
    }

    return OK;
}