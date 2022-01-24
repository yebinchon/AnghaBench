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
struct view {int dummy; } ;
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  enum request { ____Placeholder_request } request ;

/* Variables and functions */
#define  REQ_MOVE_NEXT_MERGE 129 
#define  REQ_MOVE_PREV_MERGE 128 
 int FUNC0 (char*) ; 
 int FUNC1 (struct view*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  opt_wrap_search ; 

__attribute__((used)) static enum status_code
FUNC2(struct view *view, enum request request)
{
	switch (request) {
	case REQ_MOVE_NEXT_MERGE:
		return FUNC1(view, 1, opt_wrap_search);

	case REQ_MOVE_PREV_MERGE:
		return FUNC1(view, -1, opt_wrap_search);

	default:
		return FUNC0("Invalid request searching for next merge");
	}
}