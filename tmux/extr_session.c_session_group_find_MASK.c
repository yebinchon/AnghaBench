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
struct session_group {char const* name; } ;

/* Variables and functions */
 struct session_group* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct session_group*) ; 
 int /*<<< orphan*/  session_groups ; 

struct session_group *
FUNC1(const char *name)
{
	struct session_group	sg;

	sg.name = name;
	return (FUNC0(session_groups, &session_groups, &sg));
}