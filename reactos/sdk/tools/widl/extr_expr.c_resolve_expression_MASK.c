#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  void type_t ;
struct expression_type {void* type; void* is_variable; void* is_temporary; } ;
struct expr_loc {char* attr; TYPE_2__* v; } ;
struct TYPE_5__ {void* tref; TYPE_3__* ext; int /*<<< orphan*/  sval; } ;
struct TYPE_7__ {int type; TYPE_1__ u; struct TYPE_7__* ref; struct TYPE_7__* ext2; } ;
typedef  TYPE_3__ expr_t ;
struct TYPE_6__ {int /*<<< orphan*/  loc_info; } ;

/* Variables and functions */
#define  EXPR_ADD 165 
#define  EXPR_ADDRESSOF 164 
#define  EXPR_AND 163 
#define  EXPR_ARRAY 162 
#define  EXPR_CAST 161 
#define  EXPR_CHARCONST 160 
#define  EXPR_COND 159 
#define  EXPR_DIV 158 
#define  EXPR_DOUBLE 157 
#define  EXPR_EQUALITY 156 
#define  EXPR_GTR 155 
#define  EXPR_GTREQL 154 
#define  EXPR_HEXNUM 153 
#define  EXPR_IDENTIFIER 152 
#define  EXPR_INEQUALITY 151 
#define  EXPR_LESS 150 
#define  EXPR_LESSEQL 149 
#define  EXPR_LOGAND 148 
#define  EXPR_LOGNOT 147 
#define  EXPR_LOGOR 146 
#define  EXPR_MEMBER 145 
#define  EXPR_MOD 144 
#define  EXPR_MUL 143 
#define  EXPR_NEG 142 
#define  EXPR_NOT 141 
#define  EXPR_NUM 140 
#define  EXPR_OR 139 
#define  EXPR_POS 138 
#define  EXPR_PPTR 137 
#define  EXPR_SHL 136 
#define  EXPR_SHR 135 
#define  EXPR_SIZEOF 134 
#define  EXPR_STRLIT 133 
#define  EXPR_SUB 132 
#define  EXPR_TRUEFALSE 131 
#define  EXPR_VOID 130 
#define  EXPR_WSTRLIT 129 
#define  EXPR_XOR 128 
 void* FALSE ; 
 int /*<<< orphan*/  FC_UP ; 
 void* TRUE ; 
 int /*<<< orphan*/  TYPE_BASIC_CHAR ; 
 int /*<<< orphan*/  TYPE_BASIC_DOUBLE ; 
 int /*<<< orphan*/  TYPE_BASIC_INT ; 
 int /*<<< orphan*/  TYPE_BASIC_WCHAR ; 
 int /*<<< orphan*/  FUNC0 (struct expr_loc const*,void const*,void*) ; 
 int /*<<< orphan*/  FUNC1 (struct expr_loc const*,void const*,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct expr_loc const*,void const*,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 void* FUNC4 (int /*<<< orphan*/ ,void const*,int*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 void* FUNC9 (void*) ; 
 int /*<<< orphan*/  FUNC10 (void*) ; 
 void* FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC13 (int /*<<< orphan*/ ,void*,int /*<<< orphan*/ *) ; 
 void* FUNC14 (void*) ; 

__attribute__((used)) static struct expression_type FUNC15(const struct expr_loc *expr_loc,
                                                 const type_t *cont_type,
                                                 const expr_t *e)
{
    struct expression_type result;
    result.is_variable = FALSE;
    result.is_temporary = FALSE;
    result.type = NULL;
    switch (e->type)
    {
    case EXPR_VOID:
        break;
    case EXPR_HEXNUM:
    case EXPR_NUM:
    case EXPR_TRUEFALSE:
        result.is_temporary = FALSE;
        result.type = FUNC12(TYPE_BASIC_INT, 0);
        break;
    case EXPR_STRLIT:
        result.is_temporary = TRUE;
        result.type = FUNC13(FC_UP, FUNC12(TYPE_BASIC_CHAR, 0), NULL);
        break;
    case EXPR_WSTRLIT:
        result.is_temporary = TRUE;
        result.type = FUNC13(FC_UP, FUNC12(TYPE_BASIC_WCHAR, 0), NULL);
        break;
    case EXPR_CHARCONST:
        result.is_temporary = TRUE;
        result.type = FUNC12(TYPE_BASIC_CHAR, 0);
        break;
    case EXPR_DOUBLE:
        result.is_temporary = TRUE;
        result.type = FUNC11(TYPE_BASIC_DOUBLE);
        break;
    case EXPR_IDENTIFIER:
    {
        int found_in_cont_type;
        result.is_variable = TRUE;
        result.is_temporary = FALSE;
        result.type = FUNC4(e->u.sval, cont_type, &found_in_cont_type);
        if (!result.type)
        {
            FUNC3(&expr_loc->v->loc_info, "identifier %s cannot be resolved in expression%s%s\n",
                           e->u.sval, expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        }
        break;
    }
    case EXPR_LOGNOT:
        result = FUNC15(expr_loc, cont_type, e->ref);
        FUNC2(expr_loc, cont_type, result.type);
        result.is_variable = FALSE;
        result.is_temporary = FALSE;
        result.type = FUNC12(TYPE_BASIC_INT, 0);
        break;
    case EXPR_NOT:
        result = FUNC15(expr_loc, cont_type, e->ref);
        FUNC1(expr_loc, cont_type, result.type);
        result.is_variable = FALSE;
        break;
    case EXPR_POS:
    case EXPR_NEG:
        result = FUNC15(expr_loc, cont_type, e->ref);
        FUNC0(expr_loc, cont_type, result.type);
        result.is_variable = FALSE;
        break;
    case EXPR_ADDRESSOF:
        result = FUNC15(expr_loc, cont_type, e->ref);
        if (!result.is_variable)
            FUNC3(&expr_loc->v->loc_info, "address-of operator applied to non-variable type in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        result.is_variable = FALSE;
        result.is_temporary = TRUE;
        result.type = FUNC13(FC_UP, result.type, NULL);
        break;
    case EXPR_PPTR:
        result = FUNC15(expr_loc, cont_type, e->ref);
        if (result.type && FUNC7(result.type))
            result.type = FUNC14(result.type);
        else if(result.type && FUNC5(result.type)
                            && FUNC10(result.type))
            result.type = FUNC9(result.type);
        else
            FUNC3(&expr_loc->v->loc_info, "dereference operator applied to non-pointer type in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        break;
    case EXPR_CAST:
        result = FUNC15(expr_loc, cont_type, e->ref);
        result.type = e->u.tref;
        break;
    case EXPR_SIZEOF:
        result.is_temporary = FALSE;
        result.type = FUNC12(TYPE_BASIC_INT, 0);
        break;
    case EXPR_SHL:
    case EXPR_SHR:
    case EXPR_MOD:
    case EXPR_MUL:
    case EXPR_DIV:
    case EXPR_ADD:
    case EXPR_SUB:
    case EXPR_AND:
    case EXPR_OR:
    case EXPR_XOR:
    {
        struct expression_type result_right;
        result = FUNC15(expr_loc, cont_type, e->ref);
        result.is_variable = FALSE;
        result_right = FUNC15(expr_loc, cont_type, e->u.ext);
        /* FIXME: these checks aren't strict enough for some of the operators */
        FUNC2(expr_loc, cont_type, result.type);
        FUNC2(expr_loc, cont_type, result_right.type);
        break;
    }
    case EXPR_LOGOR:
    case EXPR_LOGAND:
    case EXPR_EQUALITY:
    case EXPR_INEQUALITY:
    case EXPR_GTR:
    case EXPR_LESS:
    case EXPR_GTREQL:
    case EXPR_LESSEQL:
    {
        struct expression_type result_left, result_right;
        result_left = FUNC15(expr_loc, cont_type, e->ref);
        result_right = FUNC15(expr_loc, cont_type, e->u.ext);
        FUNC2(expr_loc, cont_type, result_left.type);
        FUNC2(expr_loc, cont_type, result_right.type);
        result.is_temporary = FALSE;
        result.type = FUNC12(TYPE_BASIC_INT, 0);
        break;
    }
    case EXPR_MEMBER:
        result = FUNC15(expr_loc, cont_type, e->ref);
        if (result.type && FUNC8(result.type))
            result = FUNC15(expr_loc, result.type, e->u.ext);
        else
            FUNC3(&expr_loc->v->loc_info, "'.' or '->' operator applied to a type that isn't a structure, union or enumeration in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        break;
    case EXPR_COND:
    {
        struct expression_type result_first, result_second, result_third;
        result_first = FUNC15(expr_loc, cont_type, e->ref);
        FUNC2(expr_loc, cont_type, result_first.type);
        result_second = FUNC15(expr_loc, cont_type, e->u.ext);
        result_third = FUNC15(expr_loc, cont_type, e->ext2);
        FUNC2(expr_loc, cont_type, result_second.type);
        FUNC2(expr_loc, cont_type, result_third.type);
        if (!FUNC7(result_second.type) ^ !FUNC7(result_third.type))
            FUNC3(&expr_loc->v->loc_info, "type mismatch in ?: expression\n" );
        /* FIXME: determine the correct return type */
        result = result_second;
        result.is_variable = FALSE;
        break;
    }
    case EXPR_ARRAY:
        result = FUNC15(expr_loc, cont_type, e->ref);
        if (result.type && FUNC5(result.type))
        {
            struct expression_type index_result;
            result.type = FUNC9(result.type);
            index_result = FUNC15(expr_loc, cont_type /* FIXME */, e->u.ext);
            if (!index_result.type || !FUNC6(index_result.type))
                FUNC3(&expr_loc->v->loc_info, "array subscript not of integral type in expression%s%s\n",
                               expr_loc->attr ? " for attribute " : "",
                               expr_loc->attr ? expr_loc->attr : "");
        }
        else
            FUNC3(&expr_loc->v->loc_info, "array subscript operator applied to non-array type in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        break;
    }
    return result;
}