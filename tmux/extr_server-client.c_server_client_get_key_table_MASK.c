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
struct session {int /*<<< orphan*/  options; } ;
struct client {struct session* session; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ,char*) ; 

const char *
FUNC1(struct client *c)
{
	struct session	*s = c->session;
	const char	*name;

	if (s == NULL)
		return ("root");

	name = FUNC0(s->options, "key-table");
	if (*name == '\0')
		return ("root");
	return (name);
}