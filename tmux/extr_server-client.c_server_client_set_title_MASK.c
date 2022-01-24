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
struct format_tree {int dummy; } ;
struct client {char* title; int /*<<< orphan*/  tty; struct session* session; } ;

/* Variables and functions */
 int /*<<< orphan*/  FORMAT_NONE ; 
 struct format_tree* FUNC0 (struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct format_tree*,struct client*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct format_tree*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct format_tree*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (char*) ; 

__attribute__((used)) static void
FUNC9(struct client *c)
{
	struct session		*s = c->session;
	const char		*template;
	char			*title;
	struct format_tree	*ft;

	template = FUNC5(s->options, "set-titles-string");

	ft = FUNC0(c, NULL, FORMAT_NONE, 0);
	FUNC1(ft, c, NULL, NULL, NULL);

	title = FUNC2(ft, template);
	if (c->title == NULL || FUNC6(title, c->title) != 0) {
		FUNC4(c->title);
		c->title = FUNC8(title);
		FUNC7(&c->tty, c->title);
	}
	FUNC4(title);

	FUNC3(ft);
}