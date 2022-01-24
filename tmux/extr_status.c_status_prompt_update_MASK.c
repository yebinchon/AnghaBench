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
struct format_tree {int dummy; } ;
struct client {char* prompt_string; char* prompt_buffer; int /*<<< orphan*/  flags; scalar_t__ prompt_hindex; int /*<<< orphan*/  prompt_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLIENT_REDRAWSTATUS ; 
 int /*<<< orphan*/  FORMAT_NONE ; 
 struct format_tree* FUNC0 (struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 void* FUNC2 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(struct client *c, const char *msg, const char *input)
{
	struct format_tree	*ft;
	char			*tmp;

	ft = FUNC0(c, NULL, FORMAT_NONE, 0);
	FUNC1(ft, c, NULL, NULL, NULL);

	tmp = FUNC2(ft, input);

	FUNC4(c->prompt_string);
	c->prompt_string = FUNC2(ft, msg);

	FUNC4(c->prompt_buffer);
	c->prompt_buffer = FUNC5(tmp);
	c->prompt_index = FUNC6(c->prompt_buffer);

	c->prompt_hindex = 0;

	c->flags |= CLIENT_REDRAWSTATUS;

	FUNC4(tmp);
	FUNC3(ft);
}