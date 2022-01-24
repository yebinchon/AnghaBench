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
struct options_table_entry {int type; int /*<<< orphan*/  name; int /*<<< orphan*/  maximum; int /*<<< orphan*/  minimum; int /*<<< orphan*/ * pattern; } ;
struct options_entry {int dummy; } ;
struct options {int dummy; } ;
struct cmdq_item {int dummy; } ;
struct cmd {struct args* args; } ;
struct args {int dummy; } ;
typedef  long long key_code ;

/* Variables and functions */
 long long KEYC_UNKNOWN ; 
#define  OPTIONS_TABLE_CHOICE 135 
#define  OPTIONS_TABLE_COLOUR 134 
#define  OPTIONS_TABLE_COMMAND 133 
#define  OPTIONS_TABLE_FLAG 132 
#define  OPTIONS_TABLE_KEY 131 
#define  OPTIONS_TABLE_NUMBER 130 
#define  OPTIONS_TABLE_STRING 129 
#define  OPTIONS_TABLE_STYLE 128 
 int FUNC0 (struct args*,char) ; 
 int FUNC1 (struct cmdq_item*,struct options_table_entry const*,struct options*,char const*) ; 
 int FUNC2 (struct cmdq_item*,struct options_table_entry const*,struct options*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct cmdq_item*,char*,...) ; 
 long long FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 long long FUNC7 (char const*) ; 
 char* FUNC8 (struct options*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct options*,int /*<<< orphan*/ ,long long) ; 
 int /*<<< orphan*/  FUNC10 (struct options*,int /*<<< orphan*/ ,int,char*,char const*) ; 
 struct options_entry* FUNC11 (struct options*,int /*<<< orphan*/ ,int,char const*) ; 
 struct options_table_entry* FUNC12 (struct options_entry*) ; 
 long long FUNC13 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const**) ; 
 char* FUNC14 (char*) ; 

__attribute__((used)) static int
FUNC15(struct cmd *self, struct cmdq_item *item, struct options *oo,
    struct options_entry *parent, const char *value)
{
	const struct options_table_entry	*oe;
	struct args				*args = self->args;
	int					 append = FUNC0(args, 'a');
	struct options_entry			*o;
	long long				 number;
	const char				*errstr, *new;
	char					*old;
	key_code				 key;

	oe = FUNC12(parent);
	if (value == NULL &&
	    oe->type != OPTIONS_TABLE_FLAG &&
	    oe->type != OPTIONS_TABLE_CHOICE) {
		FUNC3(item, "empty value");
		return (-1);
	}

	switch (oe->type) {
	case OPTIONS_TABLE_STRING:
		old = FUNC14(FUNC8(oo, oe->name));
		FUNC10(oo, oe->name, append, "%s", value);
		new = FUNC8(oo, oe->name);
		if (oe->pattern != NULL && FUNC5(oe->pattern, new, 0) != 0) {
			FUNC10(oo, oe->name, 0, "%s", old);
			FUNC6(old);
			FUNC3(item, "value is invalid: %s", value);
			return (-1);
		}
		FUNC6(old);
		return (0);
	case OPTIONS_TABLE_NUMBER:
		number = FUNC13(value, oe->minimum, oe->maximum, &errstr);
		if (errstr != NULL) {
			FUNC3(item, "value is %s: %s", errstr, value);
			return (-1);
		}
		FUNC9(oo, oe->name, number);
		return (0);
	case OPTIONS_TABLE_KEY:
		key = FUNC7(value);
		if (key == KEYC_UNKNOWN) {
			FUNC3(item, "bad key: %s", value);
			return (-1);
		}
		FUNC9(oo, oe->name, key);
		return (0);
	case OPTIONS_TABLE_COLOUR:
		if ((number = FUNC4(value)) == -1) {
			FUNC3(item, "bad colour: %s", value);
			return (-1);
		}
		FUNC9(oo, oe->name, number);
		return (0);
	case OPTIONS_TABLE_FLAG:
		return (FUNC2(item, oe, oo, value));
	case OPTIONS_TABLE_CHOICE:
		return (FUNC1(item, oe, oo, value));
	case OPTIONS_TABLE_STYLE:
		o = FUNC11(oo, oe->name, append, value);
		if (o == NULL) {
			FUNC3(item, "bad style: %s", value);
			return (-1);
		}
		return (0);
	case OPTIONS_TABLE_COMMAND:
		break;
	}
	return (-1);
}