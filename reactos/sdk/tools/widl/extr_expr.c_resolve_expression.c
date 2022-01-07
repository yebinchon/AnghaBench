
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void type_t ;
struct expression_type {void* type; void* is_variable; void* is_temporary; } ;
struct expr_loc {char* attr; TYPE_2__* v; } ;
struct TYPE_5__ {void* tref; TYPE_3__* ext; int sval; } ;
struct TYPE_7__ {int type; TYPE_1__ u; struct TYPE_7__* ref; struct TYPE_7__* ext2; } ;
typedef TYPE_3__ expr_t ;
struct TYPE_6__ {int loc_info; } ;
 void* FALSE ;
 int FC_UP ;
 void* TRUE ;
 int TYPE_BASIC_CHAR ;
 int TYPE_BASIC_DOUBLE ;
 int TYPE_BASIC_INT ;
 int TYPE_BASIC_WCHAR ;
 int check_arithmetic_type (struct expr_loc const*,void const*,void*) ;
 int check_integer_type (struct expr_loc const*,void const*,void*) ;
 int check_scalar_type (struct expr_loc const*,void const*,void*) ;
 int error_loc_info (int *,char*,...) ;
 void* find_identifier (int ,void const*,int*) ;
 int is_array (void*) ;
 int is_integer_type (void*) ;
 int is_ptr (void*) ;
 int is_valid_member_operand (void*) ;
 void* type_array_get_element (void*) ;
 int type_array_is_decl_as_ptr (void*) ;
 void* type_new_basic (int ) ;
 void* type_new_int (int ,int ) ;
 void* type_new_pointer (int ,void*,int *) ;
 void* type_pointer_get_ref (void*) ;

__attribute__((used)) static struct expression_type resolve_expression(const struct expr_loc *expr_loc,
                                                 const type_t *cont_type,
                                                 const expr_t *e)
{
    struct expression_type result;
    result.is_variable = FALSE;
    result.is_temporary = FALSE;
    result.type = ((void*)0);
    switch (e->type)
    {
    case 130:
        break;
    case 153:
    case 140:
    case 131:
        result.is_temporary = FALSE;
        result.type = type_new_int(TYPE_BASIC_INT, 0);
        break;
    case 133:
        result.is_temporary = TRUE;
        result.type = type_new_pointer(FC_UP, type_new_int(TYPE_BASIC_CHAR, 0), ((void*)0));
        break;
    case 129:
        result.is_temporary = TRUE;
        result.type = type_new_pointer(FC_UP, type_new_int(TYPE_BASIC_WCHAR, 0), ((void*)0));
        break;
    case 160:
        result.is_temporary = TRUE;
        result.type = type_new_int(TYPE_BASIC_CHAR, 0);
        break;
    case 157:
        result.is_temporary = TRUE;
        result.type = type_new_basic(TYPE_BASIC_DOUBLE);
        break;
    case 152:
    {
        int found_in_cont_type;
        result.is_variable = TRUE;
        result.is_temporary = FALSE;
        result.type = find_identifier(e->u.sval, cont_type, &found_in_cont_type);
        if (!result.type)
        {
            error_loc_info(&expr_loc->v->loc_info, "identifier %s cannot be resolved in expression%s%s\n",
                           e->u.sval, expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        }
        break;
    }
    case 147:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        check_scalar_type(expr_loc, cont_type, result.type);
        result.is_variable = FALSE;
        result.is_temporary = FALSE;
        result.type = type_new_int(TYPE_BASIC_INT, 0);
        break;
    case 141:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        check_integer_type(expr_loc, cont_type, result.type);
        result.is_variable = FALSE;
        break;
    case 138:
    case 142:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        check_arithmetic_type(expr_loc, cont_type, result.type);
        result.is_variable = FALSE;
        break;
    case 164:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        if (!result.is_variable)
            error_loc_info(&expr_loc->v->loc_info, "address-of operator applied to non-variable type in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        result.is_variable = FALSE;
        result.is_temporary = TRUE;
        result.type = type_new_pointer(FC_UP, result.type, ((void*)0));
        break;
    case 137:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        if (result.type && is_ptr(result.type))
            result.type = type_pointer_get_ref(result.type);
        else if(result.type && is_array(result.type)
                            && type_array_is_decl_as_ptr(result.type))
            result.type = type_array_get_element(result.type);
        else
            error_loc_info(&expr_loc->v->loc_info, "dereference operator applied to non-pointer type in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        break;
    case 161:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        result.type = e->u.tref;
        break;
    case 134:
        result.is_temporary = FALSE;
        result.type = type_new_int(TYPE_BASIC_INT, 0);
        break;
    case 136:
    case 135:
    case 144:
    case 143:
    case 158:
    case 165:
    case 132:
    case 163:
    case 139:
    case 128:
    {
        struct expression_type result_right;
        result = resolve_expression(expr_loc, cont_type, e->ref);
        result.is_variable = FALSE;
        result_right = resolve_expression(expr_loc, cont_type, e->u.ext);

        check_scalar_type(expr_loc, cont_type, result.type);
        check_scalar_type(expr_loc, cont_type, result_right.type);
        break;
    }
    case 146:
    case 148:
    case 156:
    case 151:
    case 155:
    case 150:
    case 154:
    case 149:
    {
        struct expression_type result_left, result_right;
        result_left = resolve_expression(expr_loc, cont_type, e->ref);
        result_right = resolve_expression(expr_loc, cont_type, e->u.ext);
        check_scalar_type(expr_loc, cont_type, result_left.type);
        check_scalar_type(expr_loc, cont_type, result_right.type);
        result.is_temporary = FALSE;
        result.type = type_new_int(TYPE_BASIC_INT, 0);
        break;
    }
    case 145:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        if (result.type && is_valid_member_operand(result.type))
            result = resolve_expression(expr_loc, result.type, e->u.ext);
        else
            error_loc_info(&expr_loc->v->loc_info, "'.' or '->' operator applied to a type that isn't a structure, union or enumeration in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        break;
    case 159:
    {
        struct expression_type result_first, result_second, result_third;
        result_first = resolve_expression(expr_loc, cont_type, e->ref);
        check_scalar_type(expr_loc, cont_type, result_first.type);
        result_second = resolve_expression(expr_loc, cont_type, e->u.ext);
        result_third = resolve_expression(expr_loc, cont_type, e->ext2);
        check_scalar_type(expr_loc, cont_type, result_second.type);
        check_scalar_type(expr_loc, cont_type, result_third.type);
        if (!is_ptr(result_second.type) ^ !is_ptr(result_third.type))
            error_loc_info(&expr_loc->v->loc_info, "type mismatch in ?: expression\n" );

        result = result_second;
        result.is_variable = FALSE;
        break;
    }
    case 162:
        result = resolve_expression(expr_loc, cont_type, e->ref);
        if (result.type && is_array(result.type))
        {
            struct expression_type index_result;
            result.type = type_array_get_element(result.type);
            index_result = resolve_expression(expr_loc, cont_type , e->u.ext);
            if (!index_result.type || !is_integer_type(index_result.type))
                error_loc_info(&expr_loc->v->loc_info, "array subscript not of integral type in expression%s%s\n",
                               expr_loc->attr ? " for attribute " : "",
                               expr_loc->attr ? expr_loc->attr : "");
        }
        else
            error_loc_info(&expr_loc->v->loc_info, "array subscript operator applied to non-array type in expression%s%s\n",
                           expr_loc->attr ? " for attribute " : "",
                           expr_loc->attr ? expr_loc->attr : "");
        break;
    }
    return result;
}
