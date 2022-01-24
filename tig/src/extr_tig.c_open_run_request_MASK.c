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
struct run_request {int dummy; } ;
typedef  enum request { ____Placeholder_request } request ;

/* Variables and functions */
 int REQ_NONE ; 
 int FUNC0 (struct view*,struct run_request*) ; 
 struct run_request* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static enum request
FUNC3(struct view *view, enum request request)
{
	struct run_request *req = FUNC1(request);

	if (!req) {
		FUNC2("Unknown run request");
		return REQ_NONE;
	}

	return FUNC0(view, req);
}