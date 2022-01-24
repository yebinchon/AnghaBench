#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* name; int (* parser ) (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **,TYPE_2__*) ;int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ condition_definition ;
struct TYPE_8__ {int /*<<< orphan*/ * asserts; int /*<<< orphan*/ * conditions; } ;
typedef  TYPE_2__ Unit ;
typedef  int /*<<< orphan*/  Condition ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WHITESPACE ; 
 TYPE_1__* condition_definitions ; 
 int FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 char* FUNC3 (char const*,char*) ; 
 scalar_t__ FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ **,TYPE_2__*) ; 

__attribute__((used)) static int FUNC6(Unit *u, const char *line) {
        const char *p;
        Condition **target;

        if ((p = FUNC3(line, "Condition")))
                target = &u->conditions;
        else if ((p = FUNC3(line, "Assert")))
                target = &u->asserts;
        else
                return FUNC2(FUNC1(EINVAL), "Cannot parse \"%s\".", line);

        for (size_t i = 0; i < FUNC0(condition_definitions); i++) {
                const condition_definition *c = &condition_definitions[i];

                p = FUNC3(line, c->name);
                if (!p)
                        continue;
                p += FUNC4(p, WHITESPACE);
                if (*p != '=')
                        return FUNC2(FUNC1(EINVAL), "Expected \"=\" in \"%s\".", line);

                p += 1 + FUNC4(p + 1, WHITESPACE);

                return c->parser(NULL, "(stdin)", 0, NULL, 0, c->name, c->type, p, target, u);
        }

        return FUNC2(FUNC1(EINVAL), "Cannot parse \"%s\".", line);
}