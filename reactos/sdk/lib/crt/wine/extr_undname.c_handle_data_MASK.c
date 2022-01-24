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
struct TYPE_2__ {unsigned int num; } ;
struct parsed_symbol {int flags; int* current; void* result; TYPE_1__ stack; } ;
struct datatype_t {char* left; char* right; } ;
struct array {int dummy; } ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int UNDNAME_NAME_ONLY ; 
 int UNDNAME_NO_ACCESS_SPECIFIERS ; 
 int UNDNAME_NO_MEMBER_TYPE ; 
 int /*<<< orphan*/  FUNC0 (struct parsed_symbol*,struct datatype_t*,struct array*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (struct parsed_symbol*) ; 
 char* FUNC2 (struct parsed_symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct parsed_symbol*,char const**,char const**) ; 
 int /*<<< orphan*/  FUNC4 (struct array*) ; 
 void* FUNC5 (struct parsed_symbol*,char*,char const*,...) ; 

__attribute__((used)) static BOOL FUNC6(struct parsed_symbol* sym)
{
    const char*         access = NULL;
    const char*         member_type = NULL;
    const char*         modifier = NULL;
    const char*         ptr_modif;
    struct datatype_t   ct;
    char*               name = NULL;
    BOOL                ret = FALSE;

    /* 0 private static
     * 1 protected static
     * 2 public static
     * 3 private non-static
     * 4 protected non-static
     * 5 public non-static
     * 6 ?? static
     * 7 ?? static
     */

    if (!(sym->flags & UNDNAME_NO_ACCESS_SPECIFIERS))
    {
        /* we only print the access for static members */
        switch (*sym->current)
        {
        case '0': access = "private: "; break;
        case '1': access = "protected: "; break;
        case '2': access = "public: "; break;
        } 
    }

    if (!(sym->flags & UNDNAME_NO_MEMBER_TYPE))
    {
        if (*sym->current >= '0' && *sym->current <= '2')
            member_type = "static ";
    }

    name = FUNC2(sym, 0);

    switch (*sym->current++)
    {
    case '0': case '1': case '2':
    case '3': case '4': case '5':
        {
            unsigned mark = sym->stack.num;
            struct array pmt;

            FUNC4(&pmt);

            if (!FUNC0(sym, &ct, &pmt, FALSE)) goto done;
            if (!FUNC3(sym, &modifier, &ptr_modif)) goto done;
            if (modifier && ptr_modif) modifier = FUNC5(sym, "%s %s", modifier, ptr_modif);
            else if (!modifier) modifier = ptr_modif;
            sym->stack.num = mark;
        }
        break;
    case '6' : /* compiler generated static */
    case '7' : /* compiler generated static */
        ct.left = ct.right = NULL;
        if (!FUNC3(sym, &modifier, &ptr_modif)) goto done;
        if (*sym->current != '@')
        {
            char*       cls = NULL;

            if (!(cls = FUNC1(sym)))
                goto done;
            ct.right = FUNC5(sym, "{for `%s'}", cls);
        }
        break;
    case '8':
    case '9':
        modifier = ct.left = ct.right = NULL;
        break;
    default: goto done;
    }
    if (sym->flags & UNDNAME_NAME_ONLY) ct.left = ct.right = modifier = NULL;

    sym->result = FUNC5(sym, "%s%s%s%s%s%s%s%s", access,
                             member_type, ct.left, 
                             modifier && ct.left ? " " : NULL, modifier, 
                             modifier || ct.left ? " " : NULL, name, ct.right);
    ret = TRUE;
done:
    return ret;
}