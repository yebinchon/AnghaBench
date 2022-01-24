#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct cmd_find_state {int idx; TYPE_4__* wp; TYPE_3__* w; TYPE_2__* wl; TYPE_1__* s; } ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_3__* window; int /*<<< orphan*/  idx; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 

__attribute__((used)) static void
FUNC1(const char *prefix, struct cmd_find_state *fs)
{
	if (fs->s != NULL)
		FUNC0("%s: s=$%u %s", prefix, fs->s->id, fs->s->name);
	else
		FUNC0("%s: s=none", prefix);
	if (fs->wl != NULL) {
		FUNC0("%s: wl=%u %d w=@%u %s", prefix, fs->wl->idx,
		    fs->wl->window == fs->w, fs->w->id, fs->w->name);
	} else
		FUNC0("%s: wl=none", prefix);
	if (fs->wp != NULL)
		FUNC0("%s: wp=%%%u", prefix, fs->wp->id);
	else
		FUNC0("%s: wp=none", prefix);
	if (fs->idx != -1)
		FUNC0("%s: idx=%d", prefix, fs->idx);
	else
		FUNC0("%s: idx=none", prefix);
}