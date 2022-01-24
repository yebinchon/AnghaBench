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
typedef  int /*<<< orphan*/  UdevRuleOperatorType ;

/* Variables and functions */
 int /*<<< orphan*/  OP_ADD ; 
 int /*<<< orphan*/  OP_ASSIGN ; 
 int /*<<< orphan*/  OP_ASSIGN_FINAL ; 
 int /*<<< orphan*/  OP_MATCH ; 
 int /*<<< orphan*/  OP_NOMATCH ; 
 int /*<<< orphan*/  OP_REMOVE ; 
 int /*<<< orphan*/  _OP_TYPE_INVALID ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char*) ; 

__attribute__((used)) static UdevRuleOperatorType FUNC2(const char *op) {
        FUNC0(op);

        if (FUNC1(op, "=="))
                return OP_MATCH;
        if (FUNC1(op, "!="))
                return OP_NOMATCH;
        if (FUNC1(op, "+="))
                return OP_ADD;
        if (FUNC1(op, "-="))
                return OP_REMOVE;
        if (FUNC1(op, "="))
                return OP_ASSIGN;
        if (FUNC1(op, ":="))
                return OP_ASSIGN_FINAL;

        return _OP_TYPE_INVALID;
}