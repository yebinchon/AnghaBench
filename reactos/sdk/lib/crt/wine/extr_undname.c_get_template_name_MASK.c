#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned int num; } ;
struct TYPE_3__ {unsigned int num; unsigned int start; } ;
struct parsed_symbol {TYPE_2__ stack; TYPE_1__ names; } ;
struct array {int dummy; } ;

/* Variables and functions */
 char* FALSE ; 
 char* FUNC0 (struct parsed_symbol*,struct array*,char*,char,char) ; 
 char* FUNC1 (struct parsed_symbol*) ; 
 int /*<<< orphan*/  FUNC2 (struct array*) ; 
 char* FUNC3 (struct parsed_symbol*,char*,char*,char*) ; 

__attribute__((used)) static char* FUNC4(struct parsed_symbol* sym)
{
    char *name, *args;
    unsigned num_mark = sym->names.num;
    unsigned start_mark = sym->names.start;
    unsigned stack_mark = sym->stack.num;
    struct array array_pmt;

    sym->names.start = sym->names.num;
    if (!(name = FUNC1(sym))) {
        sym->names.start = start_mark;
        return FALSE;
    }
    FUNC2(&array_pmt);
    args = FUNC0(sym, &array_pmt, FALSE, '<', '>');
    if (args != NULL)
        name = FUNC3(sym, "%s%s", name, args);
    sym->names.num = num_mark;
    sym->names.start = start_mark;
    sym->stack.num = stack_mark;
    return name;
}