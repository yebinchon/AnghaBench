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
struct TYPE_7__ {int /*<<< orphan*/  name; int /*<<< orphan*/  loc_info; int /*<<< orphan*/  attrs; int /*<<< orphan*/  const* type; } ;
typedef  TYPE_1__ var_t ;
typedef  int /*<<< orphan*/  const type_t ;
struct expr_loc {char* attr; TYPE_1__ const* v; } ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_2__ expr_t ;
typedef  int /*<<< orphan*/  expr_list_t ;

/* Variables and functions */
 int /*<<< orphan*/  ATTR_IIDIS ; 
 int /*<<< orphan*/  ATTR_LENGTHIS ; 
 int /*<<< orphan*/  ATTR_RANGE ; 
 int /*<<< orphan*/  ATTR_SIZEIS ; 
 int /*<<< orphan*/  ATTR_STRING ; 
 int /*<<< orphan*/  ATTR_SWITCHIS ; 
 scalar_t__ EXPR_VOID ; 
 int FALSE ; 
 int /*<<< orphan*/  TDT_IGNORE_STRINGS ; 
#define  TGT_ARRAY 149 
#define  TGT_BASIC 148 
#define  TGT_CTXT_HANDLE 147 
#define  TGT_CTXT_HANDLE_POINTER 146 
#define  TGT_ENUM 145 
#define  TGT_IFACE_POINTER 144 
#define  TGT_INVALID 143 
#define  TGT_POINTER 142 
#define  TGT_RANGE 141 
#define  TGT_STRING 140 
#define  TGT_STRUCT 139 
#define  TGT_UNION 138 
#define  TGT_USER_TYPE 137 
 int TRUE ; 
#define  TYPE_BITFIELD 136 
#define  TYPE_COCLASS 135 
#define  TYPE_ENCAPSULATED_UNION 134 
#define  TYPE_FUNCTION 133 
#define  TYPE_INTERFACE 132 
#define  TYPE_MODULE 131 
#define  TYPE_STRUCT 130 
#define  TYPE_UNION 129 
#define  TYPE_VOID 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__ const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__ const*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  const* FUNC4 (struct expr_loc*,int /*<<< orphan*/  const*,TYPE_2__*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC11 (int /*<<< orphan*/  const*) ; 
 int const FUNC12 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC13 (int /*<<< orphan*/  const*) ; 
 int FUNC14 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC16(const type_t *container_type,
                               const char *container_name, const var_t *arg)
{
    type_t *type = arg->type;
    int more_to_do;
    const char *container_type_name;
    const char *var_type;

    switch (FUNC12(container_type))
    {
    case TYPE_STRUCT:
        container_type_name = "struct";
        var_type = "field";
        break;
    case TYPE_UNION:
        container_type_name = "union";
        var_type = "arm";
        break;
    case TYPE_ENCAPSULATED_UNION:
        container_type_name = "encapsulated union";
        var_type = "arm";
        break;
    case TYPE_FUNCTION:
        container_type_name = "function";
        var_type = "parameter";
        break;
    default:
        /* should be no other container types */
        FUNC0(0);
        return;
    }

    if (FUNC8(arg->attrs, ATTR_LENGTHIS) &&
        (FUNC8(arg->attrs, ATTR_STRING) || FUNC6(arg->type, ATTR_STRING)))
        FUNC3(&arg->loc_info,
                       "string and length_is specified for argument %s are mutually exclusive attributes\n",
                       arg->name);

    if (FUNC8(arg->attrs, ATTR_SIZEIS))
    {
        expr_list_t *size_is_exprs = FUNC5(arg->attrs, ATTR_SIZEIS);
        FUNC1("size_is", arg, container_type, size_is_exprs);
    }
    if (FUNC8(arg->attrs, ATTR_LENGTHIS))
    {
        expr_list_t *length_is_exprs = FUNC5(arg->attrs, ATTR_LENGTHIS);
        FUNC1("length_is", arg, container_type, length_is_exprs);
    }
    if (FUNC8(arg->attrs, ATTR_IIDIS))
    {
        struct expr_loc expr_loc;
        expr_t *expr = FUNC5(arg->attrs, ATTR_IIDIS);
        if (expr->type != EXPR_VOID)
        {
            const type_t *expr_type;
            expr_loc.v = arg;
            expr_loc.attr = "iid_is";
            expr_type = FUNC4(&expr_loc, container_type, expr);
            if (!expr_type || !FUNC10(expr_type))
                FUNC3(&arg->loc_info, "expression must resolve to pointer to GUID type for attribute iid_is\n");
        }
    }
    if (FUNC8(arg->attrs, ATTR_SWITCHIS))
    {
        struct expr_loc expr_loc;
        expr_t *expr = FUNC5(arg->attrs, ATTR_SWITCHIS);
        if (expr->type != EXPR_VOID)
        {
            const type_t *expr_type;
            expr_loc.v = arg;
            expr_loc.attr = "switch_is";
            expr_type = FUNC4(&expr_loc, container_type, expr);
            if (!expr_type || !FUNC7(expr_type))
                FUNC3(&arg->loc_info, "expression must resolve to integral type <= 32bits for attribute %s\n",
                               expr_loc.attr);
        }
    }

    do
    {
        more_to_do = FALSE;

        switch (FUNC14(type, arg->attrs, TDT_IGNORE_STRINGS))
        {
        case TGT_STRUCT:
        case TGT_UNION:
            FUNC2(arg, type);
            break;
        case TGT_INVALID:
        {
            const char *reason = "is invalid";
            switch (FUNC12(type))
            {
            case TYPE_VOID:
                reason = "cannot derive from void *";
                break;
            case TYPE_FUNCTION:
                reason = "cannot be a function pointer";
                break;
            case TYPE_BITFIELD:
                reason = "cannot be a bit-field";
                break;
            case TYPE_COCLASS:
                reason = "cannot be a class";
                break;
            case TYPE_INTERFACE:
                reason = "cannot be a non-pointer to an interface";
                break;
            case TYPE_MODULE:
                reason = "cannot be a module";
                break;
            default:
                break;
            }
            FUNC3(&arg->loc_info, "%s \'%s\' of %s \'%s\' %s\n",
                           var_type, arg->name, container_type_name, container_name, reason);
            break;
        }
        case TGT_CTXT_HANDLE:
        case TGT_CTXT_HANDLE_POINTER:
            if (FUNC12(container_type) != TYPE_FUNCTION)
                FUNC3(&arg->loc_info,
                               "%s \'%s\' of %s \'%s\' cannot be a context handle\n",
                               var_type, arg->name, container_type_name,
                               container_name);
            break;
        case TGT_STRING:
        {
            const type_t *t = type;
            while (FUNC9(t))
                t = FUNC13(t);
            if (FUNC6(t, ATTR_RANGE))
                FUNC15(&arg->loc_info, "%s: range not verified for a string of ranged types\n", arg->name);
            break;
        }
        case TGT_POINTER:
            type = FUNC13(type);
            more_to_do = TRUE;
            break;
        case TGT_ARRAY:
            type = FUNC11(type);
            more_to_do = TRUE;
            break;
        case TGT_USER_TYPE:
        case TGT_IFACE_POINTER:
        case TGT_BASIC:
        case TGT_ENUM:
        case TGT_RANGE:
            /* nothing to do */
            break;
        }
    } while (more_to_do);
}