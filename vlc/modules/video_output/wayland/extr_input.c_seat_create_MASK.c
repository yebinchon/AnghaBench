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
typedef  int /*<<< orphan*/  vout_window_t ;
typedef  int uint32_t ;
struct wl_registry {int dummy; } ;
struct wl_list {int dummy; } ;
struct seat_data {int version; int /*<<< orphan*/  node; int /*<<< orphan*/ * seat; int /*<<< orphan*/ * keyboard; int /*<<< orphan*/  xkb; int /*<<< orphan*/ * pointer; int /*<<< orphan*/ * owner; } ;

/* Variables and functions */
 int /*<<< orphan*/  XKB_CONTEXT_NO_FLAGS ; 
 int /*<<< orphan*/  FUNC0 (struct seat_data*) ; 
 struct seat_data* FUNC1 (int) ; 
 int /*<<< orphan*/  seat_cbs ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct wl_list*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (struct wl_registry*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct seat_data*) ; 
 int /*<<< orphan*/  wl_seat_interface ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

int FUNC8(vout_window_t *wnd, struct wl_registry *registry,
                uint32_t name, uint32_t version, struct wl_list *list)
{
    struct seat_data *sd = FUNC1(sizeof (*sd));
    if (FUNC2(sd == NULL))
        return -1;

    if (version > 5)
        version = 5;

    sd->seat = FUNC5(registry, name, &wl_seat_interface, version);
    if (FUNC2(sd->seat == NULL))
    {
        FUNC0(sd);
        return -1;
    }

    sd->owner = wnd;
    sd->pointer = NULL;
#ifdef HAVE_XKBCOMMON
    if (var_InheritBool(wnd, "keyboard-events"))
        sd->xkb = xkb_context_new(XKB_CONTEXT_NO_FLAGS);

    sd->keyboard = NULL;
#endif
    sd->version = version;

    FUNC6(sd->seat, &seat_cbs, sd);
    FUNC4(list, &sd->node);
    return 0;
}