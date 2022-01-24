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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const* const) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const* const) ; 
 char* gOneTimeMessagesSeen ; 
 int /*<<< orphan*/  gPrefsDirty ; 

void
FUNC2(const char *const msg)
{
	gPrefsDirty++;
	if (gOneTimeMessagesSeen[0] == '\0')
		FUNC1(gOneTimeMessagesSeen, msg);
	else {
		FUNC0(gOneTimeMessagesSeen, ",");
		FUNC0(gOneTimeMessagesSeen, msg);
	}
}