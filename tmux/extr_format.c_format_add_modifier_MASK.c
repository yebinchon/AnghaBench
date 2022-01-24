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
typedef  scalar_t__ u_int ;
struct format_modifier {char* modifier; size_t size; char** argv; int argc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 struct format_modifier* FUNC1 (struct format_modifier*,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC2(struct format_modifier **list, u_int *count,
    const char *c, size_t n, char **argv, int argc)
{
	struct format_modifier *fm;

	*list = FUNC1(*list, (*count) + 1, sizeof **list);
	fm = &(*list)[(*count)++];

	FUNC0(fm->modifier, c, n);
	fm->modifier[n] = '\0';
	fm->size = n;

	fm->argv = argv;
	fm->argc = argc;
}