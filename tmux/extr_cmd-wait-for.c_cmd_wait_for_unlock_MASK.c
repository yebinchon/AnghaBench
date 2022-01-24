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
struct wait_item {int /*<<< orphan*/  item; } ;
struct wait_channel {scalar_t__ locked; int /*<<< orphan*/  lockers; } ;
struct cmdq_item {int dummy; } ;
typedef  enum cmd_retval { ____Placeholder_cmd_retval } cmd_retval ;

/* Variables and functions */
 int CMD_RETURN_ERROR ; 
 int CMD_RETURN_NORMAL ; 
 struct wait_item* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct wait_item*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct wait_channel*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cmdq_item*,char*,char const*) ; 
 int /*<<< orphan*/  entry ; 
 int /*<<< orphan*/  FUNC5 (struct wait_item*) ; 

__attribute__((used)) static enum cmd_retval
FUNC6(struct cmdq_item *item, const char *name,
    struct wait_channel *wc)
{
	struct wait_item	*wi;

	if (wc == NULL || !wc->locked) {
		FUNC4(item, "channel %s not locked", name);
		return (CMD_RETURN_ERROR);
	}

	if ((wi = FUNC0(&wc->lockers)) != NULL) {
		FUNC3(wi->item);
		FUNC1(&wc->lockers, wi, entry);
		FUNC5(wi);
	} else {
		wc->locked = 0;
		FUNC2(wc);
	}

	return (CMD_RETURN_NORMAL);
}