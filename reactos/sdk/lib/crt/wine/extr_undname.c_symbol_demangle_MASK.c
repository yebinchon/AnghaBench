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
struct TYPE_3__ {int /*<<< orphan*/  start; int /*<<< orphan*/  num; } ;
struct TYPE_4__ {int num; void** elts; } ;
struct parsed_symbol {int flags; char* result; char* current; TYPE_1__ names; TYPE_2__ stack; } ;
struct datatype_t {int /*<<< orphan*/  right; int /*<<< orphan*/  left; } ;
struct array {int dummy; } ;
typedef  char const CHAR ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FALSE ; 
 int TRUE ; 
 int UNDNAME_NO_ARGUMENTS ; 
 int UNDNAME_NO_FUNCTION_RETURNS ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (struct parsed_symbol*,struct datatype_t*,struct array*,int) ; 
 char* FUNC5 (struct parsed_symbol*,struct array*,int,char,char) ; 
 int /*<<< orphan*/  FUNC6 (struct parsed_symbol*) ; 
 char* FUNC7 (struct parsed_symbol*) ; 
 char* FUNC8 (struct parsed_symbol*) ; 
 int FUNC9 (struct parsed_symbol*) ; 
 int FUNC10 (struct parsed_symbol*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct array*) ; 
 int /*<<< orphan*/  FUNC12 (struct parsed_symbol*,char const*,int,TYPE_2__*) ; 
 void* FUNC13 (struct parsed_symbol*,char*,char const*,...) ; 

__attribute__((used)) static BOOL FUNC14(struct parsed_symbol* sym)
{
    BOOL                ret = FALSE;
    unsigned            do_after = 0;
    static CHAR         dashed_null[] = "--null--";

    /* FIXME seems wrong as name, as it demangles a simple data type */
    if (sym->flags & UNDNAME_NO_ARGUMENTS)
    {
        struct datatype_t   ct;

        if (FUNC4(sym, &ct, NULL, FALSE))
        {
            sym->result = FUNC13(sym, "%s%s", ct.left, ct.right);
            ret = TRUE;
        }
        goto done;
    }

    /* MS mangled names always begin with '?' */
    if (*sym->current != '?') return FALSE;
    sym->current++;

    /* Then function name or operator code */
    if (*sym->current == '?' && (sym->current[1] != '$' || sym->current[2] == '?'))
    {
        const char* function_name = NULL;

        if (sym->current[1] == '$')
        {
            do_after = 6;
            sym->current += 2;
        }

        /* C++ operator code (one character, or two if the first is '_') */
        switch (*++sym->current)
        {
        case '0': do_after = 1; break;
        case '1': do_after = 2; break;
        case '2': function_name = "operator new"; break;
        case '3': function_name = "operator delete"; break;
        case '4': function_name = "operator="; break;
        case '5': function_name = "operator>>"; break;
        case '6': function_name = "operator<<"; break;
        case '7': function_name = "operator!"; break;
        case '8': function_name = "operator=="; break;
        case '9': function_name = "operator!="; break;
        case 'A': function_name = "operator[]"; break;
        case 'B': function_name = "operator "; do_after = 3; break;
        case 'C': function_name = "operator->"; break;
        case 'D': function_name = "operator*"; break;
        case 'E': function_name = "operator++"; break;
        case 'F': function_name = "operator--"; break;
        case 'G': function_name = "operator-"; break;
        case 'H': function_name = "operator+"; break;
        case 'I': function_name = "operator&"; break;
        case 'J': function_name = "operator->*"; break;
        case 'K': function_name = "operator/"; break;
        case 'L': function_name = "operator%"; break;
        case 'M': function_name = "operator<"; break;
        case 'N': function_name = "operator<="; break;
        case 'O': function_name = "operator>"; break;
        case 'P': function_name = "operator>="; break;
        case 'Q': function_name = "operator,"; break;
        case 'R': function_name = "operator()"; break;
        case 'S': function_name = "operator~"; break;
        case 'T': function_name = "operator^"; break;
        case 'U': function_name = "operator|"; break;
        case 'V': function_name = "operator&&"; break;
        case 'W': function_name = "operator||"; break;
        case 'X': function_name = "operator*="; break;
        case 'Y': function_name = "operator+="; break;
        case 'Z': function_name = "operator-="; break;
        case '_':
            switch (*++sym->current)
            {
            case '0': function_name = "operator/="; break;
            case '1': function_name = "operator%="; break;
            case '2': function_name = "operator>>="; break;
            case '3': function_name = "operator<<="; break;
            case '4': function_name = "operator&="; break;
            case '5': function_name = "operator|="; break;
            case '6': function_name = "operator^="; break;
            case '7': function_name = "`vftable'"; break;
            case '8': function_name = "`vbtable'"; break;
            case '9': function_name = "`vcall'"; break;
            case 'A': function_name = "`typeof'"; break;
            case 'B': function_name = "`local static guard'"; break;
            case 'C': function_name = "`string'"; do_after = 4; break;
            case 'D': function_name = "`vbase destructor'"; break;
            case 'E': function_name = "`vector deleting destructor'"; break;
            case 'F': function_name = "`default constructor closure'"; break;
            case 'G': function_name = "`scalar deleting destructor'"; break;
            case 'H': function_name = "`vector constructor iterator'"; break;
            case 'I': function_name = "`vector destructor iterator'"; break;
            case 'J': function_name = "`vector vbase constructor iterator'"; break;
            case 'K': function_name = "`virtual displacement map'"; break;
            case 'L': function_name = "`eh vector constructor iterator'"; break;
            case 'M': function_name = "`eh vector destructor iterator'"; break;
            case 'N': function_name = "`eh vector vbase constructor iterator'"; break;
            case 'O': function_name = "`copy constructor closure'"; break;
            case 'R':
                sym->flags |= UNDNAME_NO_FUNCTION_RETURNS;
                switch (*++sym->current)
                {
                case '0':
                    {
                        struct datatype_t       ct;
                        struct array pmt;

                        sym->current++;
                        FUNC11(&pmt);
                        FUNC4(sym, &ct, &pmt, FALSE);
                        if (!FUNC4(sym, &ct, NULL, FALSE))
                            goto done;
                        function_name = FUNC13(sym, "%s%s `RTTI Type Descriptor'",
                                                   ct.left, ct.right);
                        sym->current--;
                    }
                    break;
                case '1':
                    {
                        const char* n1, *n2, *n3, *n4;
                        sym->current++;
                        n1 = FUNC7(sym);
                        n2 = FUNC7(sym);
                        n3 = FUNC7(sym);
                        n4 = FUNC7(sym);
                        sym->current--;
                        function_name = FUNC13(sym, "`RTTI Base Class Descriptor at (%s,%s,%s,%s)'",
                                                   n1, n2, n3, n4);
                    }
                    break;
                case '2': function_name = "`RTTI Base Class Array'"; break;
                case '3': function_name = "`RTTI Class Hierarchy Descriptor'"; break;
                case '4': function_name = "`RTTI Complete Object Locator'"; break;
                default:
                    FUNC0("Unknown RTTI operator: _R%c\n", *sym->current);
                    break;
                }
                break;
            case 'S': function_name = "`local vftable'"; break;
            case 'T': function_name = "`local vftable constructor closure'"; break;
            case 'U': function_name = "operator new[]"; break;
            case 'V': function_name = "operator delete[]"; break;
            case 'X': function_name = "`placement delete closure'"; break;
            case 'Y': function_name = "`placement delete[] closure'"; break;
            default:
                FUNC0("Unknown operator: _%c\n", *sym->current);
                return FALSE;
            }
            break;
        default:
            /* FIXME: Other operators */
            FUNC0("Unknown operator: %c\n", *sym->current);
            return FALSE;
        }
        sym->current++;
        switch (do_after)
        {
        case 1: case 2:
            if (!FUNC12(sym, dashed_null, -1, &sym->stack))
                return FALSE;
            break;
        case 4:
            sym->result = (char*)function_name;
            ret = TRUE;
            goto done;
        case 6:
            {
                char *args;
                struct array array_pmt;

                FUNC11(&array_pmt);
                args = FUNC5(sym, &array_pmt, FALSE, '<', '>');
                if (args != NULL) function_name = FUNC13(sym, "%s%s", function_name, args);
                sym->names.num = 0;
            }
            /* fall through */
        default:
            if (!FUNC12(sym, function_name, -1, &sym->stack))
                return FALSE;
            break;
        }
    }
    else if (*sym->current == '$')
    {
        /* Strange construct, it's a name with a template argument list
           and that's all. */
        sym->current++;
        ret = (sym->result = FUNC8(sym)) != NULL;
        goto done;
    }
    else if (*sym->current == '?' && sym->current[1] == '$')
        do_after = 5;

    /* Either a class name, or '@' if the symbol is not a class member */
    switch (*sym->current)
    {
    case '@': sym->current++; break;
    case '$': break;
    default:
        /* Class the function is associated with, terminated by '@@' */
        if (!FUNC6(sym)) goto done;
        break;
    }

    switch (do_after)
    {
    case 0: default: break;
    case 1: case 2:
        /* it's time to set the member name for ctor & dtor */
        if (sym->stack.num <= 1) goto done;
        if (do_after == 1)
            sym->stack.elts[0] = sym->stack.elts[1];
        else
            sym->stack.elts[0] = FUNC13(sym, "~%s", sym->stack.elts[1]);
        /* ctors and dtors don't have return type */
        sym->flags |= UNDNAME_NO_FUNCTION_RETURNS;
        break;
    case 3:
        sym->flags &= ~UNDNAME_NO_FUNCTION_RETURNS;
        break;
    case 5:
        sym->names.start++;
        break;
    }

    /* Function/Data type and access level */
    if (*sym->current >= '0' && *sym->current <= '9')
        ret = FUNC9(sym);
    else if ((*sym->current >= 'A' && *sym->current <= 'Z') || *sym->current == '$')
        ret = FUNC10(sym, do_after == 3);
    else ret = FALSE;
done:
    if (ret) FUNC2(sym->result);
    else FUNC1("Failed at %s\n", FUNC3(sym->current));

    return ret;
}