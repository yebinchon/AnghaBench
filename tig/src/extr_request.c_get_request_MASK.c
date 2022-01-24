#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  enum request { ____Placeholder_request } request ;
struct TYPE_4__ {int request; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 int REQ_UNKNOWN ; 
 scalar_t__ FUNC1 (TYPE_1__,char const*,int) ; 
 TYPE_1__* req_info ; 
 int FUNC2 (char const*) ; 

enum request
FUNC3(const char *name)
{
	int namelen = FUNC2(name);
	int i;

	for (i = 0; i < FUNC0(req_info); i++)
		if (FUNC1(req_info[i], name, namelen))
			return req_info[i].request;

	return REQ_UNKNOWN;
}