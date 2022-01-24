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
struct TYPE_8__ {struct TYPE_8__* line; TYPE_1__* rule_file; struct TYPE_8__* rule_lines_prev; } ;
typedef  TYPE_2__ UdevRuleLine ;
struct TYPE_7__ {int /*<<< orphan*/  rule_lines; TYPE_2__* current_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  rule_lines ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC3(UdevRuleLine *rule_line) {
        if (!rule_line)
                return;

        FUNC2(rule_line);

        if (rule_line->rule_file) {
                if (rule_line->rule_file->current_line == rule_line)
                        rule_line->rule_file->current_line = rule_line->rule_lines_prev;

                FUNC0(rule_lines, rule_line->rule_file->rule_lines, rule_line);
        }

        FUNC1(rule_line->line);
        FUNC1(rule_line);
}