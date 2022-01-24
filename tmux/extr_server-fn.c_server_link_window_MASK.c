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
struct winlink {int /*<<< orphan*/  idx; int /*<<< orphan*/  window; int /*<<< orphan*/  flags; } ;
struct session_group {int dummy; } ;
struct session {int /*<<< orphan*/  options; struct winlink* curw; int /*<<< orphan*/  windows; int /*<<< orphan*/  lastw; } ;

/* Variables and functions */
 int /*<<< orphan*/  WINLINK_ALERTFLAGS ; 
 int /*<<< orphan*/  FUNC0 (char*,struct session*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct session*) ; 
 struct winlink* FUNC3 (struct session*,int /*<<< orphan*/ ,int,char**) ; 
 struct session_group* FUNC4 (struct session*) ; 
 int /*<<< orphan*/  FUNC5 (struct session*,int /*<<< orphan*/ ) ; 
 struct winlink* FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,struct winlink*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct winlink*) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,...) ; 

int
FUNC10(struct session *src, struct winlink *srcwl,
    struct session *dst, int dstidx, int killflag, int selectflag,
    char **cause)
{
	struct winlink		*dstwl;
	struct session_group	*srcsg, *dstsg;

	srcsg = FUNC4(src);
	dstsg = FUNC4(dst);
	if (src != dst && srcsg != NULL && dstsg != NULL && srcsg == dstsg) {
		FUNC9(cause, "sessions are grouped");
		return (-1);
	}

	dstwl = NULL;
	if (dstidx != -1)
		dstwl = FUNC6(&dst->windows, dstidx);
	if (dstwl != NULL) {
		if (dstwl->window == srcwl->window) {
			FUNC9(cause, "same index: %d", dstidx);
			return (-1);
		}
		if (killflag) {
			/*
			 * Can't use session_detach as it will destroy session
			 * if this makes it empty.
			 */
			FUNC0("window-unlinked", dst,
			    dstwl->window);
			dstwl->flags &= ~WINLINK_ALERTFLAGS;
			FUNC8(&dst->lastw, dstwl);
			FUNC7(&dst->windows, dstwl);

			/* Force select/redraw if current. */
			if (dstwl == dst->curw) {
				selectflag = 1;
				dst->curw = NULL;
			}
		}
	}

	if (dstidx == -1)
		dstidx = -1 - FUNC1(dst->options, "base-index");
	dstwl = FUNC3(dst, srcwl->window, dstidx, cause);
	if (dstwl == NULL)
		return (-1);

	if (selectflag)
		FUNC5(dst, dstwl->idx);
	FUNC2(dst);

	return (0);
}