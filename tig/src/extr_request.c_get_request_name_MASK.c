#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_3__ {int request; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int REQ_UNKNOWN ; 
 char const* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* req_info ; 

const char *
FUNC2(enum request request)
{
	int i;

	for (i = 0; i < FUNC0(req_info); i++)
		if (req_info[i].request == request)
			return FUNC1(req_info[i].name);
	return request == REQ_UNKNOWN ? "unknown" : "run request";
}