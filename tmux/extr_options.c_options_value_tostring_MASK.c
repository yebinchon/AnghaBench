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
union options_value {size_t number; char* string; int /*<<< orphan*/  style; int /*<<< orphan*/  cmdlist; } ;
struct options_entry {TYPE_1__* tableentry; } ;
struct TYPE_2__ {int type; char** choices; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct options_entry*) ; 
 scalar_t__ FUNC1 (struct options_entry*) ; 
 scalar_t__ FUNC2 (struct options_entry*) ; 
 scalar_t__ FUNC3 (struct options_entry*) ; 
#define  OPTIONS_TABLE_CHOICE 135 
#define  OPTIONS_TABLE_COLOUR 134 
#define  OPTIONS_TABLE_COMMAND 133 
#define  OPTIONS_TABLE_FLAG 132 
#define  OPTIONS_TABLE_KEY 131 
#define  OPTIONS_TABLE_NUMBER 130 
#define  OPTIONS_TABLE_STRING 129 
#define  OPTIONS_TABLE_STYLE 128 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC5 (size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (size_t) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char**,char*,size_t) ; 
 char* FUNC10 (char*) ; 

__attribute__((used)) static char *
FUNC11(struct options_entry *o, union options_value *ov,
    int numeric)
{
	char	*s;

	if (FUNC0(o))
		return (FUNC4(ov->cmdlist, 0));
	if (FUNC3(o))
		return (FUNC10(FUNC8(&ov->style)));
	if (FUNC1(o)) {
		switch (o->tableentry->type) {
		case OPTIONS_TABLE_NUMBER:
			FUNC9(&s, "%lld", ov->number);
			break;
		case OPTIONS_TABLE_KEY:
			s = FUNC10(FUNC7(ov->number));
			break;
		case OPTIONS_TABLE_COLOUR:
			s = FUNC10(FUNC5(ov->number));
			break;
		case OPTIONS_TABLE_FLAG:
			if (numeric)
				FUNC9(&s, "%lld", ov->number);
			else
				s = FUNC10(ov->number ? "on" : "off");
			break;
		case OPTIONS_TABLE_CHOICE:
			s = FUNC10(o->tableentry->choices[ov->number]);
			break;
		case OPTIONS_TABLE_STRING:
		case OPTIONS_TABLE_STYLE:
		case OPTIONS_TABLE_COMMAND:
			FUNC6("not a number option type");
		}
		return (s);
	}
	if (FUNC2(o))
		return (FUNC10(ov->string));
	return (FUNC10(""));
}