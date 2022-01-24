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
typedef  int /*<<< orphan*/  u_int ;
struct options_entry {int dummy; } ;
struct TYPE_2__ {char* string; int /*<<< orphan*/  cmdlist; } ;
struct options_array_item {TYPE_1__ value; } ;
struct cmd_parse_result {int status; char* error; int /*<<< orphan*/  cmdlist; } ;

/* Variables and functions */
#define  CMD_PARSE_EMPTY 130 
#define  CMD_PARSE_ERROR 129 
#define  CMD_PARSE_SUCCESS 128 
 int /*<<< orphan*/  FUNC0 (struct options_entry*) ; 
 scalar_t__ FUNC1 (struct options_entry*) ; 
 scalar_t__ FUNC2 (struct options_entry*) ; 
 struct cmd_parse_result* FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct options_entry*,struct options_array_item*) ; 
 struct options_array_item* FUNC6 (struct options_entry*,int /*<<< orphan*/ ) ; 
 struct options_array_item* FUNC7 (struct options_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct options_entry*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,char*,char const*) ; 
 char* FUNC10 (char const*) ; 

int
FUNC11(struct options_entry *o, u_int idx, const char *value,
    int append, char **cause)
{
	struct options_array_item	*a;
	char				*new;
	struct cmd_parse_result		*pr;

	if (!FUNC0(o)) {
		if (cause != NULL)
			*cause = FUNC10("not an array");
		return (-1);
	}

	if (value == NULL) {
		a = FUNC6(o, idx);
		if (a != NULL)
			FUNC5(o, a);
		return (0);
	}

	if (FUNC1(o)) {
		pr = FUNC3(value, NULL);
		switch (pr->status) {
		case CMD_PARSE_EMPTY:
			if (cause != NULL)
				*cause = FUNC10("empty command");
			return (-1);
		case CMD_PARSE_ERROR:
			if (cause != NULL)
				*cause = pr->error;
			else
				FUNC4(pr->error);
			return (-1);
		case CMD_PARSE_SUCCESS:
			break;
		}

		a = FUNC6(o, idx);
		if (a == NULL)
			a = FUNC7(o, idx);
		else
			FUNC8(o, &a->value);
		a->value.cmdlist = pr->cmdlist;
		return (0);
	}

	if (FUNC2(o)) {
		a = FUNC6(o, idx);
		if (a != NULL && append)
			FUNC9(&new, "%s%s", a->value.string, value);
		else
			new = FUNC10(value);
		if (a == NULL)
			a = FUNC7(o, idx);
		else
			FUNC8(o, &a->value);
		a->value.string = new;
		return (0);
	}

	if (cause != NULL)
		*cause = FUNC10("wrong array type");
	return (-1);
}