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
struct array {unsigned int start; unsigned int num; } ;
struct parsed_symbol {char* current; char const* result; struct array stack; struct array names; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (struct parsed_symbol*) ; 
 char* FUNC1 (struct parsed_symbol*) ; 
 char* FUNC2 (struct parsed_symbol*) ; 
 char* FUNC3 (struct array*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct array*) ; 
 int /*<<< orphan*/  FUNC5 (struct parsed_symbol*,char const*,int,struct array*) ; 
 char* FUNC6 (struct parsed_symbol*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct parsed_symbol*) ; 

__attribute__((used)) static BOOL FUNC8(struct parsed_symbol* sym)
{
    const char* name = NULL;

    while (*sym->current != '@')
    {
        switch (*sym->current)
        {
        case '\0': return FALSE;

        case '0': case '1': case '2': case '3':
        case '4': case '5': case '6': case '7':
        case '8': case '9':
            name = FUNC3(&sym->names, *sym->current++ - '0');
            break;
        case '?':
            switch (*++sym->current)
            {
            case '$':
                sym->current++;
                if ((name = FUNC2(sym)) &&
                    !FUNC5(sym, name, -1, &sym->names))
                    return FALSE;
                break;
            case '?':
                {
                    struct array stack = sym->stack;
                    unsigned int start = sym->names.start;
                    unsigned int num = sym->names.num;

                    FUNC4( &sym->stack );
                    if (FUNC7( sym )) name = FUNC6( sym, "`%s'", sym->result );
                    sym->names.start = start;
                    sym->names.num = num;
                    sym->stack = stack;
                }
                break;
            default:
                if (!(name = FUNC1( sym ))) return FALSE;
                name = FUNC6( sym, "`%s'", name );
                break;
            }
            break;
        default:
            name = FUNC0(sym);
            break;
        }
        if (!name || !FUNC5(sym, name, -1, &sym->stack))
            return FALSE;
    }
    sym->current++;
    return TRUE;
}