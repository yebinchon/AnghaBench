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
struct args_value {int /*<<< orphan*/  value; } ;
struct args_entry {char* flag; } ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char**,size_t*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
FUNC3(char **buf, size_t *len, struct args_entry *entry,
    struct args_value *value)
{
	char	*escaped;

	if (**buf != '\0')
		FUNC1(buf, len, " -%c ", entry->flag);
	else
		FUNC1(buf, len, "-%c ", entry->flag);

	escaped = FUNC0(value->value);
	FUNC1(buf, len, "%s", escaped);
	FUNC2(escaped);
}