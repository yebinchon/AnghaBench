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
struct winlink {int /*<<< orphan*/  idx; } ;
struct window_pane {int /*<<< orphan*/  id; } ;
struct spawn_context {char* name; int /*<<< orphan*/  idx; int /*<<< orphan*/  flags; TYPE_1__* item; struct window_pane* wp0; struct winlink* wl; struct session* s; } ;
struct session {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 

__attribute__((used)) static void
FUNC2(const char *from, struct spawn_context *sc)
{
	struct session		*s = sc->s;
	struct winlink		*wl = sc->wl;
	struct window_pane	*wp0 = sc->wp0;
	char			 tmp[128];
	const char		*name;

	FUNC0("%s: %s, flags=%#x", from, sc->item->name, sc->flags);

	if (wl != NULL && wp0 != NULL)
		FUNC1(tmp, sizeof tmp, "wl=%d wp0=%%%u", wl->idx, wp0->id);
	else if (wl != NULL)
		FUNC1(tmp, sizeof tmp, "wl=%d wp0=none", wl->idx);
	else if (wp0 != NULL)
		FUNC1(tmp, sizeof tmp, "wl=none wp0=%%%u", wp0->id);
	else
		FUNC1(tmp, sizeof tmp, "wl=none wp0=none");
	FUNC0("%s: s=$%u %s idx=%d", from, s->id, tmp, sc->idx);

	name = sc->name;
	if (name == NULL)
		name = "none";
	FUNC0("%s: name=%s", from, name);
}