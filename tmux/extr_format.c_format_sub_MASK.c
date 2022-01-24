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
struct format_modifier {int argc; int /*<<< orphan*/ * argv; } ;

/* Variables and functions */
 int REG_EXTENDED ; 
 int REG_ICASE ; 
 char* FUNC0 (char const*,char const*,char const*,int) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,char) ; 
 char* FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(struct format_modifier *fm, const char *text, const char *pattern,
    const char *with)
{
	char	*value;
	int	 flags = REG_EXTENDED;

	if (fm->argc >= 3 && FUNC1(fm->argv[2], 'i') != NULL)
		flags |= REG_ICASE;
	value = FUNC0(pattern, with, text, flags);
	if (value == NULL)
		return (FUNC2(text));
	return (value);
}