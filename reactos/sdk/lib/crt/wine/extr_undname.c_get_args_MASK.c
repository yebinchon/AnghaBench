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
struct parsed_symbol {char* current; } ;
struct datatype_t {char* left; int /*<<< orphan*/  right; } ;
struct array {int num; char** elts; } ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct parsed_symbol*,struct datatype_t*,struct array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct array*) ; 
 int /*<<< orphan*/  FUNC2 (struct parsed_symbol*,char*,int,struct array*) ; 
 char* FUNC3 (struct parsed_symbol*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 

__attribute__((used)) static char* FUNC6(struct parsed_symbol* sym, struct array* pmt_ref, BOOL z_term, 
                      char open_char, char close_char)

{
    struct datatype_t   ct;
    struct array        arg_collect;
    char*               args_str = NULL;
    char*               last;
    unsigned int        i;

    FUNC1(&arg_collect);

    /* Now come the function arguments */
    while (*sym->current)
    {
        /* Decode each data type and append it to the argument list */
        if (*sym->current == '@')
        {
            sym->current++;
            break;
        }
        if (!FUNC0(sym, &ct, pmt_ref, TRUE))
            return NULL;
        /* 'void' terminates an argument list in a function */
        if (z_term && !FUNC4(ct.left, "void")) break;
        if (!FUNC2(sym, FUNC3(sym, "%s%s", ct.left, ct.right), -1,
                            &arg_collect))
            return NULL;
        if (!FUNC4(ct.left, "...")) break;
    }
    /* Functions are always terminated by 'Z'. If we made it this far and
     * don't find it, we have incorrectly identified a data type.
     */
    if (z_term && *sym->current++ != 'Z') return NULL;

    if (arg_collect.num == 0 || 
        (arg_collect.num == 1 && !FUNC4(arg_collect.elts[0], "void")))        
        return FUNC3(sym, "%cvoid%c", open_char, close_char);
    for (i = 1; i < arg_collect.num; i++)
    {
        args_str = FUNC3(sym, "%s,%s", args_str, arg_collect.elts[i]);
    }

    last = args_str ? args_str : arg_collect.elts[0];
    if (close_char == '>' && last[FUNC5(last) - 1] == '>')
        args_str = FUNC3(sym, "%c%s%s %c", 
                              open_char, arg_collect.elts[0], args_str, close_char);
    else
        args_str = FUNC3(sym, "%c%s%s%c", 
                              open_char, arg_collect.elts[0], args_str, close_char);
    
    return args_str;
}