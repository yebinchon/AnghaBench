#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct format_var {int (* formatter ) (struct format_context*,struct format_var*) ;int /*<<< orphan*/ * value_ref; int /*<<< orphan*/  namelen; int /*<<< orphan*/  name; } ;
struct format_context {int vars_size; int /*<<< orphan*/  file_filter; int /*<<< orphan*/  bufpos; int /*<<< orphan*/  buf; struct format_var* vars; } ;
struct TYPE_2__ {int /*<<< orphan*/  file; } ;

/* Variables and functions */
 int SIZEOF_STR ; 
 int FUNC0 (char*) ; 
 TYPE_1__ argv_env ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 char* FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*,int const,char const*) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,char const*) ; 
 int FUNC7 (struct format_context*,struct format_var*) ; 

__attribute__((used)) static bool
FUNC8(struct format_context *format, const char *name, const char *end)
{
	struct format_var *vars = format->vars;
	int i;

	if (!FUNC2(name, "%(prompt")) {
		const char *prompt = "Command argument: ";
		char msgbuf[SIZEOF_STR];
		const char *value;
		const char *msgstart = name + FUNC0("%(prompt");
		const int msglen = end - msgstart - 1;

		if (end && msglen > 0 && FUNC5(msgbuf, "%.*s", msglen, msgstart)) {
			const char *msg = msgbuf;

			while (FUNC1(*msg))
				msg++;
			if (*msg)
				prompt = msg;
		}

		value = FUNC3(prompt);
		if (value == NULL)
			return false;
		return FUNC6(format->buf, &format->bufpos, "%s", value);
	}

	for (i = 0; i < format->vars_size; i++) {
		if (FUNC4(name, vars[i].name, vars[i].namelen))
			continue;

		if (vars[i].value_ref == &argv_env.file && !format->file_filter)
			return true;

		return vars[i].formatter(format, &vars[i]);
	}

	return false;
}