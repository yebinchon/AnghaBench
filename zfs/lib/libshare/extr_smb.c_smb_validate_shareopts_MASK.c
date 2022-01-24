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
 int SA_OK ; 
 int SA_SYNTAX_ERR ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *shareopts)
{
	/* TODO: Accept 'name' and sec/acl (?) */
	if ((FUNC0(shareopts, "off") == 0) || (FUNC0(shareopts, "on") == 0))
		return (SA_OK);

	return (SA_SYNTAX_ERR);
}