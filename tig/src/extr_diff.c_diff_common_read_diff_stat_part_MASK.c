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
struct diff_stat_context {char const* text; int type; } ;
typedef  enum line_type { ____Placeholder_line_type } line_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_stat_context*,int,int) ; 
 char* FUNC1 (char const*,char) ; 
 char* FUNC2 (char const*,char) ; 

__attribute__((used)) static bool
FUNC3(struct diff_stat_context *context, char c, enum line_type next_type)
{
	const char *sep = c == '|' ? FUNC2(context->text, c) : FUNC1(context->text, c);

	if (sep == NULL)
		return false;

	FUNC0(context, sep - context->text, false);
	context->text = sep;
	context->type = next_type;

	return true;
}