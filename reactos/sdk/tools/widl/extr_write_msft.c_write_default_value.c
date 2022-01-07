
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int type_t ;
typedef int msft_typelib_t ;
struct TYPE_4__ {int sval; } ;
struct TYPE_5__ {scalar_t__ type; int cval; TYPE_1__ u; } ;
typedef TYPE_2__ expr_t ;


 scalar_t__ EXPR_STRLIT ;
 scalar_t__ EXPR_WSTRLIT ;
 scalar_t__ TYPE_ENUM ;

 int VT_BSTR ;
 int VT_USERDEFINED ;
 int chat (char*,int ) ;
 int error (char*) ;
 int get_type_vt (int *) ;
 scalar_t__ is_ptr (int *) ;
 scalar_t__ type_get_type (int *) ;
 int * type_pointer_get_ref (int *) ;
 int warning (char*,...) ;
 int write_int_value (int *,int*,int,int ) ;
 int write_string_value (int *,int*,int ) ;

__attribute__((used)) static void write_default_value(msft_typelib_t *typelib, type_t *type, expr_t *expr, int *out)
{
    int vt;

    if (expr->type == EXPR_STRLIT || expr->type == EXPR_WSTRLIT) {
        if (get_type_vt(type) != VT_BSTR)
            error("string default value applied to non-string type\n");
        chat("default value '%s'\n", expr->u.sval);
        write_string_value(typelib, out, expr->u.sval);
        return;
    }

    if (type_get_type(type) == TYPE_ENUM) {
        vt = 134;
    } else if (is_ptr(type)) {
        vt = get_type_vt(type_pointer_get_ref(type));
        if (vt == VT_USERDEFINED)
            vt = 134;
        if (expr->cval)
            warning("non-null pointer default value\n");
    } else {
        vt = get_type_vt(type);
        switch(vt) {
        case 135:
        case 134:
        case 132:
        case 138:
        case 136:
        case 131:
        case 130:
        case 129:
        case 133:
        case 128:
        case 137:
            break;
        default:
            warning("can't write value of type %d yet\n", vt);
            return;
        }
    }

    write_int_value(typelib, out, vt, expr->cval);
}
