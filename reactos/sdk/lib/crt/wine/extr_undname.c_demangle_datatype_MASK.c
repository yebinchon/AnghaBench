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
struct parsed_symbol {char* current; int flags; TYPE_1__ stack; } ;
struct datatype_t {char* left; char* right; } ;
struct array {int dummy; } ;
typedef  void* BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char) ; 
 void* FALSE ; 
 void* TRUE ; 
 int UNDNAME_NO_ALLOCATION_LANGUAGE ; 
 int UNDNAME_NO_COMPLEX_TYPE ; 
 int /*<<< orphan*/  FUNC1 (struct datatype_t*) ; 
 int FUNC2 (char const*) ; 
 char* FUNC3 (struct parsed_symbol*,struct array*,void*,char,char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const**,char const**,int) ; 
 void* FUNC5 (struct parsed_symbol*) ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct datatype_t*,struct parsed_symbol*,struct array*,char,void*) ; 
 int /*<<< orphan*/  FUNC8 (struct parsed_symbol*,char const**,char const**) ; 
 char const* FUNC9 (struct parsed_symbol*) ; 
 char* FUNC10 (char) ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 void* FUNC12 (struct array*,char) ; 
 int /*<<< orphan*/  FUNC13 (struct parsed_symbol*,char*,int,struct array*) ; 
 void* FUNC14 (struct parsed_symbol*,char*,char const*,...) ; 

__attribute__((used)) static BOOL FUNC15(struct parsed_symbol* sym, struct datatype_t* ct,
                              struct array* pmt_ref, BOOL in_args)
{
    char                dt;
    BOOL                add_pmt = TRUE;

    FUNC1(ct);
    ct->left = ct->right = NULL;
    
    switch (dt = *sym->current++)
    {
    case '_':
        /* MS type: __int8,__int16 etc */
        ct->left = FUNC6(*sym->current++);
        break;
    case 'C': case 'D': case 'E': case 'F': case 'G':
    case 'H': case 'I': case 'J': case 'K': case 'M':
    case 'N': case 'O': case 'X': case 'Z':
        /* Simple data types */
        ct->left = FUNC10(dt);
        add_pmt = FALSE;
        break;
    case 'T': /* union */
    case 'U': /* struct */
    case 'V': /* class */
    case 'Y': /* cointerface */
        /* Class/struct/union/cointerface */
        {
            const char* struct_name = NULL;
            const char* type_name = NULL;

            if (!(struct_name = FUNC5(sym)))
                goto done;
            if (!(sym->flags & UNDNAME_NO_COMPLEX_TYPE)) 
            {
                switch (dt)
                {
                case 'T': type_name = "union ";  break;
                case 'U': type_name = "struct "; break;
                case 'V': type_name = "class ";  break;
                case 'Y': type_name = "cointerface "; break;
                }
            }
            ct->left = FUNC14(sym, "%s%s", type_name, struct_name);
        }
        break;
    case '?':
        /* not all the time is seems */
        if (in_args)
        {
            const char*   ptr;
            if (!(ptr = FUNC9(sym))) goto done;
            ct->left = FUNC14(sym, "`template-parameter-%s'", ptr);
        }
        else
        {
            if (!FUNC7(ct, sym, pmt_ref, '?', in_args)) goto done;
        }
        break;
    case 'A': /* reference */
    case 'B': /* volatile reference */
        if (!FUNC7(ct, sym, pmt_ref, dt, in_args)) goto done;
        break;
    case 'Q': /* const pointer */
    case 'R': /* volatile pointer */
    case 'S': /* const volatile pointer */
        if (!FUNC7(ct, sym, pmt_ref, in_args ? dt : 'P', in_args)) goto done;
        break;
    case 'P': /* Pointer */
        if (FUNC11(*sym->current))
	{
            /* FIXME:
             *   P6 = Function pointer
             *   P8 = Member function pointer
             *   others who knows.. */
            if (*sym->current == '8')
            {
                char*                   args = NULL;
                const char*             call_conv;
                const char*             exported;
                struct datatype_t       sub_ct;
                unsigned                mark = sym->stack.num;
                const char*             class;
                const char*             modifier;
                const char*             ptr_modif;

                sym->current++;

                if (!(class = FUNC5(sym)))
                    goto done;
                if (!FUNC8(sym, &modifier, &ptr_modif))
                    goto done;
                if (modifier)
                    modifier = FUNC14(sym, "%s %s", modifier, ptr_modif);
                else if(ptr_modif[0])
                    modifier = FUNC14(sym, " %s", ptr_modif);
                if (!FUNC4(*sym->current++,
                            &call_conv, &exported,
                            sym->flags & ~UNDNAME_NO_ALLOCATION_LANGUAGE))
                    goto done;
                if (!FUNC15(sym, &sub_ct, pmt_ref, FALSE))
                    goto done;

                args = FUNC3(sym, pmt_ref, TRUE, '(', ')');
                if (!args) goto done;
                sym->stack.num = mark;

                ct->left  = FUNC14(sym, "%s%s (%s %s::*",
                        sub_ct.left, sub_ct.right, call_conv, class);
                ct->right = FUNC14(sym, ")%s%s", args, modifier);
            }
            else if (*sym->current == '6')
            {
                char*                   args = NULL;
                const char*             call_conv;
                const char*             exported;
                struct datatype_t       sub_ct;
                unsigned                mark = sym->stack.num;

                sym->current++;

                if (!FUNC4(*sym->current++,
                                            &call_conv, &exported, 
                                            sym->flags & ~UNDNAME_NO_ALLOCATION_LANGUAGE) ||
                    !FUNC15(sym, &sub_ct, pmt_ref, FALSE))
                    goto done;

                args = FUNC3(sym, pmt_ref, TRUE, '(', ')');
                if (!args) goto done;
                sym->stack.num = mark;

                ct->left  = FUNC14(sym, "%s%s (%s*", 
                                       sub_ct.left, sub_ct.right, call_conv);
                ct->right = FUNC14(sym, ")%s", args);
            }
            else goto done;
	}
	else if (!FUNC7(ct, sym, pmt_ref, 'P', in_args)) goto done;
        break;
    case 'W':
        if (*sym->current == '4')
        {
            char*               enum_name;
            sym->current++;
            if (!(enum_name = FUNC5(sym)))
                goto done;
            if (sym->flags & UNDNAME_NO_COMPLEX_TYPE)
                ct->left = enum_name;
            else
                ct->left = FUNC14(sym, "enum %s", enum_name);
        }
        else goto done;
        break;
    case '0': case '1': case '2': case '3': case '4':
    case '5': case '6': case '7': case '8': case '9':
        /* Referring back to previously parsed type */
        /* left and right are pushed as two separate strings */
        if (!pmt_ref) goto done;
        ct->left = FUNC12(pmt_ref, (dt - '0') * 2);
        ct->right = FUNC12(pmt_ref, (dt - '0') * 2 + 1);
        if (!ct->left) goto done;
        add_pmt = FALSE;
        break;
    case '$':
        switch (*sym->current++)
        {
        case '0':
            if (!(ct->left = FUNC9(sym))) goto done;
            break;
        case 'D':
            {
                const char*   ptr;
                if (!(ptr = FUNC9(sym))) goto done;
                ct->left = FUNC14(sym, "`template-parameter%s'", ptr);
            }
            break;
        case 'F':
            {
                const char*   p1;
                const char*   p2;
                if (!(p1 = FUNC9(sym))) goto done;
                if (!(p2 = FUNC9(sym))) goto done;
                ct->left = FUNC14(sym, "{%s,%s}", p1, p2);
            }
            break;
        case 'G':
            {
                const char*   p1;
                const char*   p2;
                const char*   p3;
                if (!(p1 = FUNC9(sym))) goto done;
                if (!(p2 = FUNC9(sym))) goto done;
                if (!(p3 = FUNC9(sym))) goto done;
                ct->left = FUNC14(sym, "{%s,%s,%s}", p1, p2, p3);
            }
            break;
        case 'Q':
            {
                const char*   ptr;
                if (!(ptr = FUNC9(sym))) goto done;
                ct->left = FUNC14(sym, "`non-type-template-parameter%s'", ptr);
            }
            break;
        case '$':
            if (*sym->current == 'B')
            {
                unsigned            mark = sym->stack.num;
                struct datatype_t   sub_ct;
                const char*         arr = NULL;
                sym->current++;

                /* multidimensional arrays */
                if (*sym->current == 'Y')
                {
                    const char* n1;
                    int num;

                    sym->current++;
                    if (!(n1 = FUNC9(sym))) goto done;
                    num = FUNC2(n1);

                    while (num--)
                        arr = FUNC14(sym, "%s[%s]", arr, FUNC9(sym));
                }

                if (!FUNC15(sym, &sub_ct, pmt_ref, FALSE)) goto done;

                if (arr)
                    ct->left = FUNC14(sym, "%s %s", sub_ct.left, arr);
                else
                    ct->left = sub_ct.left;
                ct->right = sub_ct.right;
                sym->stack.num = mark;
            }
            else if (*sym->current == 'C')
            {
                const char *ptr, *ptr_modif;

                sym->current++;
                if (!FUNC8(sym, &ptr, &ptr_modif)) goto done;
                if (!FUNC15(sym, ct, pmt_ref, in_args)) goto done;
                ct->left = FUNC14(sym, "%s %s", ct->left, ptr);
            }
            break;
        }
        break;
    default :
        FUNC0("Unknown type %c\n", dt);
        break;
    }
    if (add_pmt && pmt_ref && in_args)
    {
        /* left and right are pushed as two separate strings */
        if (!FUNC13(sym, ct->left ? ct->left : "", -1, pmt_ref) ||
            !FUNC13(sym, ct->right ? ct->right : "", -1, pmt_ref))
            return FALSE;
    }
done:
    
    return ct->left != NULL;
}