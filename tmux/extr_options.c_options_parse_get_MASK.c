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
struct options_entry {int dummy; } ;
struct options {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct options_entry* FUNC1 (struct options*,char*) ; 
 struct options_entry* FUNC2 (struct options*,char*) ; 
 char* FUNC3 (char const*,int*) ; 

struct options_entry *
FUNC4(struct options *oo, const char *s, int *idx, int only)
{
	struct options_entry	*o;
	char			*name;

	name = FUNC3(s, idx);
	if (name == NULL)
		return (NULL);
	if (only)
		o = FUNC2(oo, name);
	else
		o = FUNC1(oo, name);
	FUNC0(name);
	return (o);
}