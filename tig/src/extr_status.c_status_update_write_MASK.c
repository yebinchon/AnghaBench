#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; int /*<<< orphan*/  rev; int /*<<< orphan*/  mode; } ;
struct status {TYPE_2__ new; TYPE_1__ old; } ;
struct io {int dummy; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
#define  LINE_STAT_STAGED 130 
#define  LINE_STAT_UNSTAGED 129 
#define  LINE_STAT_UNTRACKED 128 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (struct io*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 

__attribute__((used)) static bool
FUNC2(struct io *io, struct status *status, enum line_type type)
{
	switch (type) {
	case LINE_STAT_STAGED:
		return FUNC1(io, "%06o %s\t%s%c", status->old.mode,
				 status->old.rev, status->old.name, 0);

	case LINE_STAT_UNSTAGED:
	case LINE_STAT_UNTRACKED:
		return FUNC1(io, "%s%c", status->new.name, 0);

	default:
		FUNC0("line type %d not handled in switch", type);
		return false;
	}
}