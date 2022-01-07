
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int start; int num; } ;
struct TYPE_4__ {int num; void** elts; } ;
struct parsed_symbol {int flags; char* result; char* current; TYPE_1__ names; TYPE_2__ stack; } ;
struct datatype_t {int right; int left; } ;
struct array {int dummy; } ;
typedef char const CHAR ;
typedef int BOOL ;


 int ERR (char*,int) ;
 int FALSE ;
 int TRUE ;
 int UNDNAME_NO_ARGUMENTS ;
 int UNDNAME_NO_FUNCTION_RETURNS ;
 int WARN (char*,int ) ;
 int assert (char*) ;
 int debugstr_a (char*) ;
 scalar_t__ demangle_datatype (struct parsed_symbol*,struct datatype_t*,struct array*,int) ;
 char* get_args (struct parsed_symbol*,struct array*,int,char,char) ;
 int get_class (struct parsed_symbol*) ;
 char* get_number (struct parsed_symbol*) ;
 char* get_template_name (struct parsed_symbol*) ;
 int handle_data (struct parsed_symbol*) ;
 int handle_method (struct parsed_symbol*,int) ;
 int str_array_init (struct array*) ;
 int str_array_push (struct parsed_symbol*,char const*,int,TYPE_2__*) ;
 void* str_printf (struct parsed_symbol*,char*,char const*,...) ;

__attribute__((used)) static BOOL symbol_demangle(struct parsed_symbol* sym)
{
    BOOL ret = FALSE;
    unsigned do_after = 0;
    static CHAR dashed_null[] = "--null--";


    if (sym->flags & UNDNAME_NO_ARGUMENTS)
    {
        struct datatype_t ct;

        if (demangle_datatype(sym, &ct, ((void*)0), FALSE))
        {
            sym->result = str_printf(sym, "%s%s", ct.left, ct.right);
            ret = TRUE;
        }
        goto done;
    }


    if (*sym->current != '?') return FALSE;
    sym->current++;


    if (*sym->current == '?' && (sym->current[1] != '$' || sym->current[2] == '?'))
    {
        const char* function_name = ((void*)0);

        if (sym->current[1] == '$')
        {
            do_after = 6;
            sym->current += 2;
        }


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
                        struct datatype_t ct;
                        struct array pmt;

                        sym->current++;
                        str_array_init(&pmt);
                        demangle_datatype(sym, &ct, &pmt, FALSE);
                        if (!demangle_datatype(sym, &ct, ((void*)0), FALSE))
                            goto done;
                        function_name = str_printf(sym, "%s%s `RTTI Type Descriptor'",
                                                   ct.left, ct.right);
                        sym->current--;
                    }
                    break;
                case '1':
                    {
                        const char* n1, *n2, *n3, *n4;
                        sym->current++;
                        n1 = get_number(sym);
                        n2 = get_number(sym);
                        n3 = get_number(sym);
                        n4 = get_number(sym);
                        sym->current--;
                        function_name = str_printf(sym, "`RTTI Base Class Descriptor at (%s,%s,%s,%s)'",
                                                   n1, n2, n3, n4);
                    }
                    break;
                case '2': function_name = "`RTTI Base Class Array'"; break;
                case '3': function_name = "`RTTI Class Hierarchy Descriptor'"; break;
                case '4': function_name = "`RTTI Complete Object Locator'"; break;
                default:
                    ERR("Unknown RTTI operator: _R%c\n", *sym->current);
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
                ERR("Unknown operator: _%c\n", *sym->current);
                return FALSE;
            }
            break;
        default:

            ERR("Unknown operator: %c\n", *sym->current);
            return FALSE;
        }
        sym->current++;
        switch (do_after)
        {
        case 1: case 2:
            if (!str_array_push(sym, dashed_null, -1, &sym->stack))
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

                str_array_init(&array_pmt);
                args = get_args(sym, &array_pmt, FALSE, '<', '>');
                if (args != ((void*)0)) function_name = str_printf(sym, "%s%s", function_name, args);
                sym->names.num = 0;
            }

        default:
            if (!str_array_push(sym, function_name, -1, &sym->stack))
                return FALSE;
            break;
        }
    }
    else if (*sym->current == '$')
    {


        sym->current++;
        ret = (sym->result = get_template_name(sym)) != ((void*)0);
        goto done;
    }
    else if (*sym->current == '?' && sym->current[1] == '$')
        do_after = 5;


    switch (*sym->current)
    {
    case '@': sym->current++; break;
    case '$': break;
    default:

        if (!get_class(sym)) goto done;
        break;
    }

    switch (do_after)
    {
    case 0: default: break;
    case 1: case 2:

        if (sym->stack.num <= 1) goto done;
        if (do_after == 1)
            sym->stack.elts[0] = sym->stack.elts[1];
        else
            sym->stack.elts[0] = str_printf(sym, "~%s", sym->stack.elts[1]);

        sym->flags |= UNDNAME_NO_FUNCTION_RETURNS;
        break;
    case 3:
        sym->flags &= ~UNDNAME_NO_FUNCTION_RETURNS;
        break;
    case 5:
        sym->names.start++;
        break;
    }


    if (*sym->current >= '0' && *sym->current <= '9')
        ret = handle_data(sym);
    else if ((*sym->current >= 'A' && *sym->current <= 'Z') || *sym->current == '$')
        ret = handle_method(sym, do_after == 3);
    else ret = FALSE;
done:
    if (ret) assert(sym->result);
    else WARN("Failed at %s\n", debugstr_a(sym->current));

    return ret;
}
