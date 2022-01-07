
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int name; int loc_info; int attrs; int const* type; } ;
typedef TYPE_1__ var_t ;
typedef int const type_t ;
struct expr_loc {char* attr; TYPE_1__ const* v; } ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_2__ expr_t ;
typedef int expr_list_t ;


 int ATTR_IIDIS ;
 int ATTR_LENGTHIS ;
 int ATTR_RANGE ;
 int ATTR_SIZEIS ;
 int ATTR_STRING ;
 int ATTR_SWITCHIS ;
 scalar_t__ EXPR_VOID ;
 int FALSE ;
 int TDT_IGNORE_STRINGS ;
 int TRUE ;
 int assert (int ) ;
 int check_conformance_expr_list (char*,TYPE_1__ const*,int const*,int *) ;
 int check_remoting_fields (TYPE_1__ const*,int const*) ;
 int error_loc_info (int *,char*,...) ;
 int const* expr_resolve_type (struct expr_loc*,int const*,TYPE_2__*) ;
 void* get_attrp (int ,int ) ;
 scalar_t__ is_aliaschain_attr (int const*,int ) ;
 int is_allowed_conf_type (int const*) ;
 scalar_t__ is_attr (int ,int ) ;
 int is_ptr (int const*) ;
 int is_ptr_guid_type (int const*) ;
 int const* type_array_get_element (int const*) ;
 int const type_get_type (int const*) ;
 int const* type_pointer_get_ref (int const*) ;
 int typegen_detect_type (int const*,int ,int ) ;
 int warning_loc_info (int *,char*,int ) ;

__attribute__((used)) static void check_field_common(const type_t *container_type,
                               const char *container_name, const var_t *arg)
{
    type_t *type = arg->type;
    int more_to_do;
    const char *container_type_name;
    const char *var_type;

    switch (type_get_type(container_type))
    {
    case 130:
        container_type_name = "struct";
        var_type = "field";
        break;
    case 129:
        container_type_name = "union";
        var_type = "arm";
        break;
    case 134:
        container_type_name = "encapsulated union";
        var_type = "arm";
        break;
    case 133:
        container_type_name = "function";
        var_type = "parameter";
        break;
    default:

        assert(0);
        return;
    }

    if (is_attr(arg->attrs, ATTR_LENGTHIS) &&
        (is_attr(arg->attrs, ATTR_STRING) || is_aliaschain_attr(arg->type, ATTR_STRING)))
        error_loc_info(&arg->loc_info,
                       "string and length_is specified for argument %s are mutually exclusive attributes\n",
                       arg->name);

    if (is_attr(arg->attrs, ATTR_SIZEIS))
    {
        expr_list_t *size_is_exprs = get_attrp(arg->attrs, ATTR_SIZEIS);
        check_conformance_expr_list("size_is", arg, container_type, size_is_exprs);
    }
    if (is_attr(arg->attrs, ATTR_LENGTHIS))
    {
        expr_list_t *length_is_exprs = get_attrp(arg->attrs, ATTR_LENGTHIS);
        check_conformance_expr_list("length_is", arg, container_type, length_is_exprs);
    }
    if (is_attr(arg->attrs, ATTR_IIDIS))
    {
        struct expr_loc expr_loc;
        expr_t *expr = get_attrp(arg->attrs, ATTR_IIDIS);
        if (expr->type != EXPR_VOID)
        {
            const type_t *expr_type;
            expr_loc.v = arg;
            expr_loc.attr = "iid_is";
            expr_type = expr_resolve_type(&expr_loc, container_type, expr);
            if (!expr_type || !is_ptr_guid_type(expr_type))
                error_loc_info(&arg->loc_info, "expression must resolve to pointer to GUID type for attribute iid_is\n");
        }
    }
    if (is_attr(arg->attrs, ATTR_SWITCHIS))
    {
        struct expr_loc expr_loc;
        expr_t *expr = get_attrp(arg->attrs, ATTR_SWITCHIS);
        if (expr->type != EXPR_VOID)
        {
            const type_t *expr_type;
            expr_loc.v = arg;
            expr_loc.attr = "switch_is";
            expr_type = expr_resolve_type(&expr_loc, container_type, expr);
            if (!expr_type || !is_allowed_conf_type(expr_type))
                error_loc_info(&arg->loc_info, "expression must resolve to integral type <= 32bits for attribute %s\n",
                               expr_loc.attr);
        }
    }

    do
    {
        more_to_do = FALSE;

        switch (typegen_detect_type(type, arg->attrs, TDT_IGNORE_STRINGS))
        {
        case 139:
        case 138:
            check_remoting_fields(arg, type);
            break;
        case 143:
        {
            const char *reason = "is invalid";
            switch (type_get_type(type))
            {
            case 128:
                reason = "cannot derive from void *";
                break;
            case 133:
                reason = "cannot be a function pointer";
                break;
            case 136:
                reason = "cannot be a bit-field";
                break;
            case 135:
                reason = "cannot be a class";
                break;
            case 132:
                reason = "cannot be a non-pointer to an interface";
                break;
            case 131:
                reason = "cannot be a module";
                break;
            default:
                break;
            }
            error_loc_info(&arg->loc_info, "%s \'%s\' of %s \'%s\' %s\n",
                           var_type, arg->name, container_type_name, container_name, reason);
            break;
        }
        case 147:
        case 146:
            if (type_get_type(container_type) != 133)
                error_loc_info(&arg->loc_info,
                               "%s \'%s\' of %s \'%s\' cannot be a context handle\n",
                               var_type, arg->name, container_type_name,
                               container_name);
            break;
        case 140:
        {
            const type_t *t = type;
            while (is_ptr(t))
                t = type_pointer_get_ref(t);
            if (is_aliaschain_attr(t, ATTR_RANGE))
                warning_loc_info(&arg->loc_info, "%s: range not verified for a string of ranged types\n", arg->name);
            break;
        }
        case 142:
            type = type_pointer_get_ref(type);
            more_to_do = TRUE;
            break;
        case 149:
            type = type_array_get_element(type);
            more_to_do = TRUE;
            break;
        case 137:
        case 144:
        case 148:
        case 145:
        case 141:

            break;
        }
    } while (more_to_do);
}
